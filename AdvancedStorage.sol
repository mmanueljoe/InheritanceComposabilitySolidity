// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";

contract AdvancedStorage is SimpleStorage{
    uint256 public timestamp;

    address public owner;

    modifier onlyOwner() {
    require(msg.sender == owner, "Not the contract owner");
    _;
    }

    constructor() {
        owner = msg.sender;
    }


    // override the storeNumber function to store a timestamp
    function storeNumber(uint256 _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber;
        timestamp = block.timestamp;

    }

    // retrieve both the favorite number and the timestamp
    function getWithTimeStamp() public view returns(uint256,uint256){
        return (favoriteNumber,timestamp);
    }
}


contract SayHello {
    function greet() public pure virtual returns (string memory) {
        return "Hello!";
    }
}

contract SaySomething {
    function greet() public pure virtual returns (string memory) {
        return "The future is bullish!";
    }
}

contract SaySomethingElse is SayHello, SaySomething {
    // Override to resolve the conflict between A and B
    function greet() public pure override(SayHello, SaySomething) returns (string memory) {
        return string(abi.encodePacked(SayHello.greet(), " and ", SaySomething.greet()));
    }
}


// Construct Inheritance


contract Parent{
    uint256 public value;

    // contract to initialize value
    constructor(uint256 _value){
        value = _value;
    }
}

contract Child is Parent{
    constructor(uint256 _childValue) Parent(_childValue) {}
}



// inheritance conflict resolution

contract Parent1{
    function foo() public pure virtual returns(string memory){
        return "Parent1";
    }
}


contract Parent2{
    function foo() public pure virtual returns(string memory){
        return "Parent2";
    }
}

contract Child1 is Parent1, Parent2 {
    // Override to resolve conflict between Parent1 and Parent2
    function foo() public pure override(Parent1, Parent2) returns (string memory) {
        return string(abi.encodePacked(Parent1.foo(), " + ", Parent2.foo()));
    }
}


// inheritance using the SUPER keyword

contract Base {
    function foo() public pure virtual returns (string memory) {
        return "Base";
    }
}

contract Derived is Base {
    function foo() public pure override returns (string memory) {
        return string(abi.encodePacked(super.foo(), " + Derived"));
    }
}