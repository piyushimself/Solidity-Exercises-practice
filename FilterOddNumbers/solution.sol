// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract FilterOddNumbers {
    /*
        This exercise assumes you understand how to manipulate Array.
        1. Function `filterOdd` takes an array of uint256 as argument. 
        2. Filter and return an array with the odd numbers removed.
        Note: this is tricky because you cannot allocate a dynamic array in memory, 
              you need to count the even numbers then declare an array of that size.
    */

    function filterOdd(
        uint256[] memory _arr
    ) public pure returns (uint256[] memory) {
        // count odd number
        uint256 count = 0;
        for (uint256 i = 0; i < _arr.length; i++) {
            if (_arr[i] % 2 == 0) count++;
        }

        uint256[] memory _brr = new uint256[](count);
        uint256 index = 0;

        for (uint256 i = 0; i < _arr.length; i++) {
            if (_arr[i] % 2 == 0) {
                _brr[index] = _arr[i];
                index++;
            }
        }
        return _brr;
    }
}
/*  As cannot allocate a dynamic array in memory, it is important to get the length of the array
get the length
make array with 0 elements,
make a integer for index mapping
then get the even number from original array and insert it into new array.
*/
