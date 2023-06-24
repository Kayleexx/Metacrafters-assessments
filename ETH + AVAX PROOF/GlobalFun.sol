/* A smart contract that uses global functions in the message context*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageContract {
    string private message;

    event MessageUpdated(string newMessage);

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function updateMessage(string memory newMessage) public {
        require(validateMessage(newMessage), "Invalid message");
        message = newMessage;
        emit MessageUpdated(newMessage);
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function validateMessage(string memory _message) internal pure returns (bool) {
        // Perform validation logic here
        // For example, check if the message length is greater than 5
        return bytes(_message).length > 5;
    }
}
