Class Piece {
    int type;
    public:
    virtual bool move(Cell const& curCell, Cell const& nextCell) = 0;
};

//Concerete Pieces will specify the move.
