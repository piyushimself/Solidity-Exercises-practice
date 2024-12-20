// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Mean {
    /**
     * The goal of this exercise is to return the mean of the numbers in "arr"
     */
    function mean(uint256[] calldata arr) public pure returns (uint256) {
        // your code here
        uint256 sum;
        for (uint256 i; i < arr.length; i++) {
            sum = sum + arr[i];
        }
        return (sum / arr.length);
    }
}
