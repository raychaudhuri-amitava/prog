#!/usr/bin/python3

from datetime import date
from datetime import datetime
from pprint import pprint # just for neatness of display
import sqlite3
from nsetools import Nse

fl = open('/home/amitava/mydata/stock_analysis/stock_job.log', 'a')
fl.write(datetime.now().strftime("Running at : %Y-%m-%d %H:%M:%S\n"))
fl.close()

nse = Nse()
con = sqlite3.connect('/home/amitava/mydata/stock_analysis/stock_details.db')
cur = con.cursor()

# Create table
cur.execute("CREATE TABLE IF NOT EXISTS stock_details (dump_date text, symbol text, company text, lastprice real, dayLow real, dayHigh real)")
cur.execute("CREATE TABLE IF NOT EXISTS wrong_stocks (symbol text PRIMARY KEY, company text, reason text, dump_date text)")
cur.execute("CREATE TABLE IF NOT EXISTS traded_stocks (symbol text PRIMARY KEY, company text)")
con.commit()

all_stock_codes = nse.get_stock_codes(cached=False)
cur.execute("SELECT * FROM traded_stocks")
for row in cur :
    all_stock_codes.update({row[0]:row[1]})

con.commit()

for symb, comp in all_stock_codes.items() :
    try :
        cur.execute("INSERT INTO traded_stocks VALUES (?, ?) ON CONFLICT (symbol) DO NOTHING", (symb, comp))
        if(nse.is_valid_code(symb)) :
            q = nse.get_quote(symb)
            if(q != None) :
                cur.execute("INSERT INTO stock_details VALUES (?, ?, ?, ?, ?, ?)", (date.today(), symb, comp, q['lastPrice'], q['dayLow'], q['dayHigh']))
            else :
                cur.execute("INSERT INTO wrong_stocks VALUES (?, ?, ?, ?) ON CONFLICT (symbol) DO UPDATE SET company = excluded.company, dump_date = excluded.dump_date", (symb, comp, 'NoResponse', date.today()))
        else :
            cur.execute("INSERT INTO wrong_stocks VALUES (?, ?, ?, ?) ON CONFLICT (symbol) DO UPDATE SET company = excluded.company, dump_date = excluded.dump_date", (symb, comp, 'InvalidCode', date.today()))
    except Exception as ex:
        cur.execute("INSERT INTO wrong_stocks VALUES (?, ?, ?, ?) ON CONFLICT (symbol) DO UPDATE SET company = excluded.company, dump_date = excluded.dump_date", (symb, comp, ex.__class__.__name__, date.today()))

con.commit()
con.close()
