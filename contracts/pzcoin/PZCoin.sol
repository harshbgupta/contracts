pragma solidity ^0.8.0;

contract PZCoin{
    int balance;

    constructor() {
        balance = 0;
    }

    function getBalance() view public returns(int){
        return balance;
    }

    function buyCoin(int amt) public {
        balance = balance + amt;
    }

    function sellCoin(int amt) public {
        balance = balance - amt;
    }
}