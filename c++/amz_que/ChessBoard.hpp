class ChessBoard {
    Cell cells[64];
    public:
    ChessBoard() {
        //Initialize the cells.
    }
    void setBoard(int row, int col);
    Cell const& getCell(int row, int col);
    bool isCellEmpty(int row, int col);
};
