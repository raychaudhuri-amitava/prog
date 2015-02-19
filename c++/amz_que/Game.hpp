class Game<WinningCriteria, Rules> {
    ChessBoard board;
    Player player[2];
    Piece pieces[32];
    public:
    void play();
    void declareWinner();
};
