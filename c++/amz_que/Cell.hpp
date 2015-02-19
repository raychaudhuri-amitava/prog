enum CELLCOLOR {
    UNKNOWN=-1;
    BLACK=0;
    WHITE=1;
};

class Cell {
    int row;
    int col;
    CELLCOLOR color; //Can be black or white.
    public:
    void getRowCol(int &rw, int &col);
    void getColor(CELLCOLOR &color);
};
