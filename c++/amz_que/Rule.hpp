class Criteria {
    public:
    bool isCorrectMove(Cell const& start, Cell const& end) = 0;
};

class Rule<ConcreteCriteria> {
    public:
    bool isValid(Cell const& c1, Cell const& c2, Piece const& p);
};
