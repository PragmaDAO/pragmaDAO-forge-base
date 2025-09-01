// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "../../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    /// @dev Tests that the greet() function returns the correct string.
    function test_greetReturnsHelloWorld() public view {
        assertEq(helloWorld.greet(), "Hello, World!", "greet() should return 'Hello, World!'");
    }

    /// @dev Tests that the contract includes a public state variable named 'greeting'.
    /// The compiler automatically creates a getter function for public state variables.
    function test_greetingStateVariableIsPublic() public view {
        // We test this by trying to access the state variable.
        // If the variable is public, the getter `greeting()` will exist.
        // While this test seems redundant with the constructor logic, it ensures
        // the user has correctly declared the state variable as public.
        string memory currentGreeting = helloWorld.greeting();
        assertEq(currentGreeting, "Hello, World!", "The 'greeting' state variable should be public and initialized.");
    }
}
