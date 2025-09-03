// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "../../src/StateAndLocalVariables.sol";

contract StateAndLocalVariablesTest is Test {
    StateAndLocalVariables public contractInstance;

    function setUp() public {
        contractInstance = new StateAndLocalVariables();
    }

    function testMyStateVariableExists() public {
        // Check if myStateVariable exists and is initialized to 0 (default for uint256)
        assertEq(contractInstance.myStateVariable(), 0);
    }

    function testSetToTenMore() public {
        uint256 initialValue = contractInstance.myStateVariable();
        contractInstance.setToTenMore();
        assertEq(contractInstance.myStateVariable(), initialValue + 10);

        // Call again to ensure it increments correctly
        contractInstance.setToTenMore();
        assertEq(contractInstance.myStateVariable(), initialValue + 20);
    }

    function testLocalVariableFunc() public {
        // This function creates a local variable but doesn't return it.
        // We can't directly test the local variable's value from outside.
        // The test here is primarily to ensure the function can be called without reverting.
        // A more robust test would involve events or side effects if the lesson intended them.
        contractInstance.localVariableFunc();
        // No assertion needed as per the contract's current definition (no return, no state change)
    }
}
