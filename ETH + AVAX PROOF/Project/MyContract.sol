// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Amount must be greater than zero"); // Using require statement

        uint balance = address(this).balance;
        require(balance >= amount, "Insufficient contract balance"); // Using require statement

        (bool success, ) = msg.sender.call{value: amount}("");
        assert(success); // Using assert statement

        revert("Withdrawal failed"); // Using revert statement
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
