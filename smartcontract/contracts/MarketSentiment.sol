//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract  MarketSentiment{
    address public owner;
    string[] public tickersArray;

    constructor() {
        owner = msg.sender;
    }

    struct ticker{
        bool exists;
        uint up;
        uint down;
        mapping(address => bool) Voters;
    }

    event tickerupdated (
        uint up,
        uint down,
        address voter,
        string ticker
    );

    mapping(string => ticker) private Tickers;


    function addTicker(string memory _ticker) public {
        require(msg.sender == owner,"Only the owner can create tickers");
        ticker storage newTicker = Tickers[_ticker];
        newTicker.exists=true;
        tickersArray.push(_ticker);
    }

    function vote(string memory _ticker, bool _vote)public {
        require(Tickers[_ticker].exists, "Cant vote on this COin");
        require(!Tickers[_ticker].Voters[msg.sender], "You have already voted for this coin");
    
    
    
    }




}
