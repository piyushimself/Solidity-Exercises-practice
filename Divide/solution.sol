// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Divide {
    uint256 public constant PERCENTAGE_INTEREST = 3;

    /**
     * The calculate interest function is buggy because of how it calculates interest of amount passed into it
     * Make it return the right value.
     */

    function calculateInterest(uint256 amount) external pure returns (uint256) {
        uint256 x = (PERCENTAGE_INTEREST * amount) / 100;
        return x;
    }
}

/**
   PERCENTAGE_INTEREST / 100 results in integer division because Solidity uses integer math by default. Since 
   PERCENTAGE_INTEREST is 3, dividing by 100 will result in 0, not the expected value of 0.03 (which represents 3% in decimal form).

3 / 100 = 0 (integer division)
So, instead of calculating 3% of amount, it will always return 0 for any amount greater than 0 because multiplying 
0 by amount will still result in 0.

Correct Approach
To fix this bug, we need to ensure that we handle the percentage calculation correctly
by avoiding integer division for the percentage part. We should first calculate the percentage as
a decimal, then multiply by the amount.
     */
