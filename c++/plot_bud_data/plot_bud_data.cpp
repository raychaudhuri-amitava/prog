/*
 * =====================================================================================
 *
 *       Filename:  plot_bud_data.cc
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  Tuesday 14 October 2014 12:04:01  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (),
 *   Organization:
 *
 * =====================================================================================
 */

#include<iostream>
#include<fstream>
#include<string>
#include<sstream>
#include<vector>
#include<stdint.h>
#include<plot.h>

using namespace std;

enum empties_t { empties_ok, no_empties };

template <typename Container>
bool split(Container &result, string const&s, char delimiter,
           size_t start_offset, size_t length, empties_t empties = empties_ok )
{
    result.clear();
    std::istringstream ss(s);
    size_t curr_offset = 0;
    while ((!ss.eof()) && (curr_offset < (start_offset + length)))
    {
        string st("");
        std::getline( ss, st, delimiter );
        if(curr_offset >= start_offset) {
            typename Container::value_type field;
            if ((empties == no_empties) && st.empty()) {
                return false;
            }
            std::istringstream s(st);
            s>>field;
            result.push_back( field );
        }
        curr_offset++;
    }
    return true;
}

class BudgetData {
private:
    string req_id;
    string bud_type;
    float bud_val;
    float floor_val;
    float ceil_val;
    bool ok_to_plot;

public:
    BudgetData(string const& budLine) : bud_val(0.0), floor_val(0.0), ceil_val(0.0), ok_to_plot(false) {
        vector<string> rb;
        if(split<vector<string> >(rb, budLine, ',', 0, 2, no_empties)) {
            req_id = rb[0];
            bud_type = rb[1];
            vector<float> rbf;
            if(split<vector<float> >(rbf, budLine, ',', 2, 3, no_empties)) {
                bud_val = rbf[0];
                floor_val = rbf[1];
                ceil_val = rbf[2];
                ok_to_plot = true;
            }
        }
    }
    void plotBudVal(PLOT *pl, double x) {
        if(ok_to_plot) {
            plot_double(pl, x, bud_val);
        }
    }
    void plotFloor(PLOT *pl, double x) {
        if(ok_to_plot) {
            plot_double(pl, x, floor_val);
        }
    }
    void plotCeil(PLOT *pl, double x) {
        if(ok_to_plot) {
            plot_double(pl, x, ceil_val);
        }
    }
};

int main(void) {
    COLOR_T red = {0xFF,0,0};
    COLOR_T green = {0,0xFF,0};
    COLOR_T blue = {0,0,0xFF};
    PLOT *plt[3];
    plt[0] = open_plot_c(red);
    plt[1] = open_plot_c(green);
    plt[2] = open_plot_c(blue);
    set_mode(plt[0], KEEP_GIVENCOLOR);
    set_mode(plt[1], KEEP_GIVENCOLOR);
    set_mode(plt[2], KEEP_GIVENCOLOR);
    double x = 0.0;
    while(!cin.eof()) {
        string str;
        std::getline(cin, str);
        BudgetData b(str);
        b.plotBudVal(plt[0], x);
        b.plotFloor(plt[1], x);
        b.plotCeil(plt[2], x);
        x+=1.0;
    }

    PLOT *pl = open_plot();
    joinallplots(pl, plt, 3);
    set_jpegfile(pl, "bud.jpg");
    set_xlabel(pl, "data point");
    set_ylabel(pl, "bdgvl (bud(r),floor(g),ceil(b))");
    set_mode(pl, KEEP_RANGE);
    set_mode(pl, KEEP_SHELLFILE);
    set_mode(pl, KEEP_FILE);
    set_mode(pl, KEEP_GIVENCOLOR);
    set_mode(pl, KEEP_LINE);
    //set_point_size(pl, 0.5);
    set_min_max_2d(pl, 0.0, x, 0.0, 10.0);
    set_min_max_2d(pl, 0.0, x, 0.0, 10.0);
    paint_plot(pl);
    close_plot(pl);
    close_plot(plt[2]);
    close_plot(plt[1]);
    close_plot(plt[0]);

    return 0;
}

