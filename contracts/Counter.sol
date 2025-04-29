// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public count;
    address private owner; 

    modifier onlyOwner (){
        require(msg.sender == owner, "Only call owner");
        _;
    }

    constructor(uint _initial, address _owner){
        count = _initial;
        owner = _owner;
    }

    function increment() public{
        count += 1;
    }

    function getCount() public view returns (uint256){
        return count;
    }

    function isOver(uint256 number) public view returns (bool){
        if(count > number){
            return false;
        }else{
            return true;
        }
    }

    function sum(uint256 a, uint256 b) public pure returns (uint256){
        return a + b;
    }
    
    function reset() public onlyOwner() {
        count = 0;
    }
}