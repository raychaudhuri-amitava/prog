class WinningCriteria {
    public:
    virtual bool isWon();
};

class ConcreteWinningCriteria : public WinningCriteria {    
    public:
    virtual bool isWon() {
        ...
    }
};
