// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Fibonacci {
    /*
        This exercise assumes you understand what Fibonacci sequence is.
        1. Function `fibonacci` takes a uint256 as argument and returns nth fibonacci number.
        
        Fibonacci sequence are 0,1,1,2,3,5,8,13,....
        
        calling fibonacci(6) would return 8, because the 6th Fibonacci number is 8.

        for 0 and 1, return the number itself. for other, use simple logic. don't worry for GAS, 
        use as many function local variable to complete the logic
    */

    function fibonacci(uint256 _position) public pure returns (uint256) {
        if (_position <= 1) return _position;
        else {
            uint256 a = 0;
            uint256 b = 1;
            uint256 result;

            for (uint256 i = 2; i <= _position; i++) {
                result = a + b;
                a = b;
                b = result;
            }

            return result;
        }
    }
}
