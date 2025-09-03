// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract DefaultLesson {
    string public greet = "Hello World!";

    function setGreeting(string memory _newGreet) public {
        greet = _newGreet;
    }
}
