// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Test.sol";
import "../../src/DefaultLesson.sol"; // Still imports DefaultLesson.sol, which now contains HelloWorld

contract DefaultLessonTest is Test {
    HelloWorld public defaultLesson; // Type is HelloWorld

    function setUp() public {
        defaultLesson = new HelloWorld(); // Instantiating HelloWorld
    }

    function testInitialGreeting() public {
        assertEq(defaultLesson.greet(), "Hello World!");
    }

    function testSetGreeting() public {
        string memory newGreeting = "Hello, Default Lesson!";
        defaultLesson.setGreeting(newGreeting);
        assertEq(defaultLesson.greet(), newGreeting);
    }
}
