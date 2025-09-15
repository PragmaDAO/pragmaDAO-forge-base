// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "user_contract/IntegerBasics.sol";

contract IntegerBasicsTest is Test {
    IntegerBasics public integerBasics;

    function setUp() public {
        integerBasics = new IntegerBasics();
    }

    function testSetValues() public {
        uint8 _myUint8 = 100;
        int8 _myInt8 = -50;
        integerBasics.setValues(_myUint8, _myInt8);
        assertEq(integerBasics.myUint8(), _myUint8);
        assertEq(integerBasics.myInt8(), _myInt8);
    }

    function testConvertUintToInt() public view {
        uint256 _value = 12345;
        assertEq(integerBasics.convertUintToInt(_value), int256(_value));
    }

    function testConvertIntToUint() public view {
        int256 _value = -67890;
        // Note: Converting negative int to uint will result in a very large positive number due to two's complement
        assertEq(integerBasics.convertIntToUint(_value), uint256(_value));
    }

    function testInitialValues() public view {
        assertEq(integerBasics.myUint8(), 0);
        assertEq(integerBasics.myInt8(), 0);
        assertEq(integerBasics.myUint256(), 0);
        assertEq(integerBasics.myInt256(), 0);
    }
}
