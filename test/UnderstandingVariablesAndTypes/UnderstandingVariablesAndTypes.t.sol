// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "../../src/UnderstandingVariablesAndTypes.sol";

contract UnderstandingVariablesAndTypesTest is Test {
    UnderstandingVariablesAndTypes public variableTypes;

    function setUp() public {
        variableTypes = new UnderstandingVariablesAndTypes();
    }

    function test_myUint() public view {
        assertEq(variableTypes.myUint(), 123, "myUint should be 123");
    }

    function test_myString() public view {
        assertEq(variableTypes.myString(), "Pragma", "myString should be 'Pragma'");
    }

    function test_myBool() public view {
        assertEq(variableTypes.myBool(), true, "myBool should be true");
    }

    function test_myAddress() public view {
        assertEq(variableTypes.myAddress(), 0xaB84835cE4BDe5b14aB989f061559c79EA4921Bf, "myAddress is incorrect");
    }

    function test_myBytes32() public view {
        assertEq(variableTypes.myBytes32(), 0x0123456789012345678901234567890123456789012345678901234567890123, "myBytes32 is incorrect");
    }
}
