pragma solidity ^0.8.0;

contract ChesSR_Old {
    // defining a owner
    address public owner;

    // making a constructor payable makes contract eligible to hold ether
    constructor() payable{
        //following line is owner is the same address which deploying on blockchain
        owner = msg.sender;
    }

    //change owner. FYI put a condition so that only owner himself can assign someone as owner
    function changeOwner(address newOwner) public {
        //checking that this method or task can be done by owner only
        require(msg.sender == owner, "Only Owner can change owner !!!");
        owner = newOwner;
    }

    //modifier are like sub function
    modifier minAmountCheck(){
        //setting a condition that bet should be more than 99 wei.
        require(msg.value >= 99 wei);
        //following line must be written in the end in modifier (which kinda of tells it's modifier)
        _;
    }

    //deposit funds to contract. Calling this method automatically deposit ether in to contract
    //whatever value we give it automatically goes in msg.value and calling this method makes the deeposit
    function deposit() external payable minAmountCheck() returns(bool){
        return true;
    }

    //funds transfer to specific address from contract
    function transfer(address payable receiver, uint256 amount) public returns (bool){
        //checking if transfer funds are not greater than contract funds
        require(address(this).balance >= amount, "Insufficient funds");
        receiver.transfer(amount);
        return true;
    }

    //Check contract balance
    function checkBalance() public view returns (uint256){
        return (address(this).balance);
    }

}
