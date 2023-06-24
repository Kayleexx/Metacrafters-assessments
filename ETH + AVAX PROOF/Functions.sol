/* write a smart contract that uses view, pure, and payable functions. 
Ensure that the functions are accessible within the contract
 and derived contracts as well */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract    MyContract {
    // State variable
    uint public data;

    // View function
    function getData() public view returns (uint) {
        return data;
    }

    // Pure function
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}

contract DerivedContract is MyContract {
    // Accessing view function from the derived contract
    function readData() public view returns (uint) {
        return getData();
    }

    // Accessing pure function from the derived contract
    function calculate(uint a, uint b) public pure returns (uint) {
        return add(a, b);
    }

    // Payable function
    function deposit() public payable {
        data += msg.value;
    }
}
