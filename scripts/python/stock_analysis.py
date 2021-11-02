#!/usr/bin/python3


"""
    The MIT License (MIT)
    Copyright (c) 2014 Vivek Jha
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
"""

import os
import sys
import six
import ast
import re
import json
import zipfile
import io
import csv
from dateutil import parser

# import paths differ in python 2 and python 3
if six.PY2:
    from urllib2 import build_opener, HTTPCookieProcessor, Request
    from urllib import urlencode
    from cookielib import CookieJar
elif six.PY3:
    from urllib.request import build_opener, HTTPCookieProcessor, Request
    from urllib.parse import urlencode
    from http.cookiejar import CookieJar

from datetime import date
from datetime import datetime
from pprint import pprint # just for neatness of display
import sqlite3

##### START : NSE utils ########

def byte_adaptor(fbuffer):
    """ provides py3 compatibility by converting byte based
    file stream to string based file stream

    Arguments:
        fbuffer: file like objects containing bytes

    Returns:
        string buffer
    """
    if six.PY3:
        strings = fbuffer.read().decode('latin-1')
        fbuffer = six.StringIO(strings)
        return fbuffer
    else:
        return fbuffer


def js_adaptor(buffer):
    """ convert javascript objects like true, none, NaN etc. to
    quoted word.

    Arguments:
        buffer: string to be converted

    Returns:
        string after conversion
    """
    buffer = re.sub('true', 'True', buffer)
    buffer = re.sub('false', 'False', buffer)
    buffer = re.sub('none', 'None', buffer)
    buffer = re.sub('NaN', '"NaN"', buffer)
    return buffer

##### END : NSE utils ##########

#globals
opener = None
headers = None
__CODECACHE__ = None
get_quote_url = ''
stocks_csv_url = ''
historical_data_folder = ''

def nse_headers():
    """
    Builds right set of headers for requesting http://nseindia.com
    :return: a dict with http headers
    """
    return {'Accept': '*/*',
            'Accept-Language': 'en-US,en;q=0.5',
            'Host': 'www1.nseindia.com',
            'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0',
            'X-Requested-With': 'XMLHttpRequest'
            }

def nse_opener():
    """
    builds opener for urllib2
    :return: opener object
    """
    cj = CookieJar()
    return build_opener(HTTPCookieProcessor(cj))


def init_online_globals() :
    global opener
    global headers
    global __CODECACHE__
    global get_quote_url
    global stocks_csv_url

    opener = nse_opener()
    headers = nse_headers()
    __CODECACHE__ = {}
    get_quote_url = 'https://www1.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuote.jsp?'
    stocks_csv_url = 'http://www1.nseindia.com/content/equities/EQUITY_L.csv'

def init_historical_globals(data_folder) :
    global historical_data_folder
    historical_data_folder = data_folder

def build_url_for_quote(code):
    """
    builds a url which can be requested for a given stock code
    :param code: string containing stock code.
    :return: a url object
    """
    if code is not None and type(code) is str:
        encoded_args = urlencode([('symbol', code), ('illiquid', '0'), ('smeFlag', '0'), ('itpFlag', '0')])
        return get_quote_url + encoded_args
    else:
        raise Exception('code must be string')

    
def clean_server_response(resp_dict):
    """cleans the server reponse by replacing:
        '-'     -> None
        '1,000' -> 1000
    :param resp_dict:
    :return: dict with all above substitution
    """

    # change all the keys from unicode to string
    d = {}
    for key, value in resp_dict.items():
        d[str(key)] = value
    resp_dict = d
    for key, value in resp_dict.items():
        if type(value) is str or isinstance(value, six.string_types):
            if re.match('-', value):
                try:
                    if float(value) or int(value):
                        dataType = True
                except ValueError:
                    resp_dict[key] = None
            elif re.search(r'^[0-9,.]+$', value):
                # replace , to '', and type cast to int
                resp_dict[key] = float(re.sub(',', '', value))
            else:
                resp_dict[key] = str(value)
    return resp_dict


def render_response(data, as_json=False):
    if as_json is True:
        return json.dumps(data)
    else:
        return data

def get_stock_codes(cached=True, as_json=False):
    """
    returns a dictionary with key as stock code and value as stock name.
    It also implements cache functionality and hits the server only
    if user insists or cache is empty
    :return: dict
    """
    global __CODECACHE__
    if (cached is False) or (not bool(__CODECACHE__)) :
        # raises HTTPError and URLError
        url = stocks_csv_url
        req = Request(url, None, headers)
        res = opener.open(req)
        res_dict = {}
        if res is not None:
            # for py3 compat covert byte file like object to
            # string file like object
            res = byte_adaptor(res)
            for line in res.read().split('\n'):
                if line != '' and re.search(',', line):
                    (code, name) = line.split(',')[0:2]
                    res_dict[code] = name
                # else just skip the evaluation, line may not be a valid csv
            __CODECACHE__ = res_dict
        else:
            raise Exception('no response received')    

    return render_response(__CODECACHE__, as_json)

def is_valid_code(code):
    """
    :param code: a string stock code
    :return: Boolean
    """
    if code:
        stock_codes = get_stock_codes()
        if code.upper() in stock_codes:
            return True
        else:
            return False

def get_quote(code, as_json=False):
    """
    gets the quote for a given stock code
    :param code:
    :return: dict or None
    :raises: HTTPError, URLError
    """
    code = code.upper()
    if is_valid_code(code):
        try :
            url = build_url_for_quote(code)
            req = Request(url, None, headers)
            # this can raise HTTPError and URLError, but we are not handling it
            # north bound APIs should use it for exception handling
            res = opener.open(req)

            # for py3 compat covert byte file like object to
            # string file like object
            res = byte_adaptor(res)
            res = res.read()
            # Now parse the response to get the relevant data
            match = re.search(r'<div\s+id="responseDiv"\s+style="display:none">(.*?)</div>',res, re.S)
            buffer = match.group(1).strip()
            response = clean_server_response(json.loads(buffer)['data'][0])
            response.update({'tradedDate':json.loads(buffer)['tradedDate']})
        except Exception :
            return None
        
        return render_response(response, as_json)
    else:
        return None


def upload_stock_to_db_online():
    fl = open('/home/amitava/mydata/stock_analysis/stock_job.log', 'a')
    fl.write(datetime.now().strftime("Running realtime at : %Y-%m-%d %H:%M:%S\n"))
    fl.close()
    con = sqlite3.connect('/home/amitava/mydata/stock_analysis/stock_details.db')
    cur = con.cursor()
    
    # Create tables
    cur.execute("CREATE TABLE IF NOT EXISTS stock_details (symbol text, dump_date text, previousClose real, openPrice real, dayLow real, dayHigh real, lastprice real, closePrice real, averagePrice real, deliveryQuantity real, deliveryToTradedQuantity real, quantityTraded real, totalTradedValue real, totalTradedVolume real, UNIQUE(symbol, dump_date))")
    cur.execute("CREATE TABLE IF NOT EXISTS wrong_stocks (symbol text PRIMARY KEY, company text, reason text, dump_date text)")
    cur.execute("CREATE TABLE IF NOT EXISTS traded_stocks (symbol text PRIMARY KEY, company text)")
    con.commit()

    all_stock_codes = get_stock_codes(cached=False)
    cur.execute("SELECT * FROM traded_stocks")
    con.commit()
    for row in cur:
        all_stock_codes.update({row[0]: row[1]})
        

    for symb, comp in all_stock_codes.items():
        try:
            cur.execute("INSERT INTO traded_stocks VALUES (?, ?) ON CONFLICT (symbol) DO NOTHING", (symb, comp))
            q = get_quote(symb)
            if(q != None):
                cur.execute("INSERT INTO stock_details VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT (symbol, dump_date) DO NOTHING", (q['symbol'], q['tradedDate'], q['previousClose'], q['open'], q['dayLow'], q['dayHigh'], q['lastPrice'], q['closePrice'], q['averagePrice'], q['deliveryQuantity'], q['deliveryToTradedQuantity'], q['quantityTraded'], q['totalTradedValue'], q['totalTradedVolume']))
            else:
                cur.execute("INSERT INTO wrong_stocks VALUES (?, ?, ?, ?) ON CONFLICT (symbol) DO UPDATE SET company = excluded.company, dump_date = excluded.dump_date",
                            (symb, comp, 'NoResponse', date.today()))
            
        except Exception as ex:
            cur.execute("INSERT INTO wrong_stocks VALUES (?, ?, ?, ?) ON CONFLICT (symbol) DO UPDATE SET company = excluded.company, dump_date = excluded.dump_date",
                        (symb, comp, ex.__class__.__name__, date.today()))

    con.commit()
    con.close()

# Get the stock data from : https://www.kaggle.com/stoicstatic/india-stock-data-nse-1990-2020
# Download every Qtr End (Mar, Jun, Sep, Dec)
def upload_historical_stock_to_db() :
    fl = open('/home/amitava/mydata/stock_analysis/stock_job.log', 'a')
    fl.write(datetime.now().strftime("Running historical at : %Y-%m-%d %H:%M:%S\n"))
    fl.close()

    con = sqlite3.connect('/home/amitava/mydata/stock_analysis/stock_details.db')
    cur = con.cursor()

    # Create tables
    cur.execute("CREATE TABLE IF NOT EXISTS stock_details (symbol text, dump_date text, previousClose real, openPrice real, dayLow real, dayHigh real, lastprice real, closePrice real, averagePrice real, deliveryQuantity real, deliveryToTradedQuantity real, quantityTraded real, totalTradedValue real, totalTradedVolume real, UNIQUE(symbol, dump_date))")
    con.commit()

    data_folder = os.fsencode(historical_data_folder)
    for fl in os.listdir(data_folder):
        flnm = os.fsdecode(fl)
        if flnm.endswith(".csv") or flnm.endswith(".CSV"): 
            full_path = os.path.join(historical_data_folder + '/', flnm)
            fields = []
            cols = {}
            with open(full_path, 'r') as csvfile :
                csvreader = csv.reader(csvfile)
                fields = next(csvreader)
                for i in range(0, len(fields)) :
                    cols.update({fields[i]:i})
                for row in csvreader:
                    cur.execute("INSERT INTO stock_details VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT (symbol, dump_date) DO NOTHING", (row[int(cols['Symbol'])], row[int(cols['Date'])], row[int(cols['Prev Close'])], row[int(cols['Open'])], row[int(cols['Low'])], row[int(cols['High'])], row[int(cols['Last'])], row[int(cols['Close'])], '0', row[int(cols['Deliverable Volume'])], '0', '0', '0', '0'))
                    
    con.commit()
    con.close()

if __name__ == "__main__":
    if len(sys.argv) < 2 : 
        print(sys.argv[0], "mode [path to historical datasets]\nmode can be :\n'realtime': Updates the stock DB with latest traded data from nse website.\n'historical': Updates the stock DB with historical data available in csv files downloaded locally from https://www.kaggle.com/stoicstatic/india-stock-data-nse-1990-2020\n'both': This will do both modes.\nThe path to dataset should contain all the csv files. Its mandatory only for 'historical' and 'both' mode.\nFor 'realtime' mode path to historical datasets will be ignored so it can be discarded.\nThe front slash at the end of path is not needed.")
        sys.exit(-1)
    init_online_globals()
    mode = sys.argv[1]
    if (mode == 'realtime') or (mode == 'both') :
        upload_stock_to_db_online()
    if (mode == 'historical') or (mode == 'both') : 
        if(len(sys.argv) != 3) :
            print(sys.argv[0], "mode [path to historical datasets]\nmode can be :\n'realtime': Updates the stock DB with latest traded data from nse website.\n'historical': Updates the stock DB with historical data available in csv files downloaded locally from https://www.kaggle.com/stoicstatic/india-stock-data-nse-1990-2020\n'both': This will do both modes.\nThe path to dataset should contain all the csv files. Its mandatory only for 'historical' and 'both' mode.\nFor 'realtime' mode path to historical datasets will be ignored so it can be discarded.\nThe front slash at the end of path is not needed.")
            sys.exit(-2)
        init_historical_globals(sys.argv[2])
        upload_historical_stock_to_db()
