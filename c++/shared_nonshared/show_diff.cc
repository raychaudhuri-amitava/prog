#include <iostream>
#include <mysql++/mysql++.h>
#include <plot.h>

using namespace std;

int main(void)
{
// Connect to the sample database.
    mysqlpp::Connection conn(false);
    if (conn.connect("predict", "localhost", "root", "root",3306)) {
        mysqlpp::Query query = conn.query();
        mysqlpp::Result res = query.store("SELECT * FROM DIFFS;");

        // Display results
        if (res) {
            PLOT *pl = open_plot();
            // Get each row in result set, and print its contents
            for (size_t i = 0; i < res.num_rows(); ++i) {
                double x = res.at(i)["tot_val"];
                double shared_y = res.at(i)["shared_sec"];
                double nonshared_y = res.at(i)["non_shared_sec"];
                plot_double(pl,x,shared_y);
                plot_double(pl,x,nonshared_y);
                cout<<"The vals are: "<<x<<" , "<<shared_y<<" , "<<nonshared_y<<endl;
            }
            paint_plot(pl);
            close_plot(pl);
        }
        else {
            cerr << "Failed to get DIFFS table: " << query.error() << endl;
            return 1;
        }

        return 0;
    }
    else {
        cerr << "DB connection failed: " << conn.error() << endl;
        return 1;
    }

    return 0;
}
