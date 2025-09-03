// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "../../src/UnderstandingFunctions.sol";

contract SimpleFunctionsTest is Test {
    SimpleFunctions public simpleFunctions;

    function setUp() public {
        simpleFunctions = new SimpleFunctions();
    }

    function testGetNumber() public {
        assertEq(simpleFunctions.getNumber(), 1);
    }

    function testAdd() public {
        assertEq(simpleFunctions.add(2, 3), 5);
        assertEq(simpleFunctions.add(0, 0), 0);
        assertEq(simpleFunctions.add(uint256(type(uint256).max) - 1, 1), type(uint256).max); // This test might fail due to overflow if not handled in contract
    }

    function testSubtract() public {
        assertEq(simpleFunctions.subtract(5, 2), 3);
        assertEq(simpleFunctions.subtract(10, 10), 0);
        // assertEq(simpleFunctions.subtract(0, 5), type(uint256).max - 4); // Underflow - this test expects underflow to be handled by compiler or custom logic
    }

    function testMultiply() public {
        assertEq(simpleFunctions.multiply(2, 3), 6);
        assertEq(simpleFunctions.multiply(0, 5), 0);
        // assertEq(simpleFunctions.multiply(uint256(type(uint256).max) / 2, 2), type(uint256).max - 1); // Overflow check - this test expects overflow to be handled by compiler or custom logic
    }

    function testDivide() public {
        assertEq(simpleFunctions.divide(6, 3), 2);
        assertEq(simpleFunctions.divide(10, 3), 3); // Integer division
        vm.expectRevert(); // Expect revert for division by zero
        simpleFunctions.divide(5, 0);
    }
}
