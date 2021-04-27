// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Math
 * @dev Store & retrieve value in a variable
 */
contract Math {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }
    function addition(uint64 num1, uint64 num2) public {
        number = num1 + num2;
    }
    function subtraction(uint64 num1, uint64 num2) public {
        number = num1 - num2;
    }
    function multiplication(uint64 num1, uint64 num2) public {
        number = num1 * num2;
    }
    function division(uint64 num1, uint64 num2) public {
        if(num2 == 0) {
            number = 0;
        } else {
            number = num1 / num2;
        }
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}