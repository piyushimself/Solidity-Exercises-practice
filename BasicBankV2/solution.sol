// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract BasicBankV2 {
    /// used to store the balance of users
    ///     USER    =>  BALANCE
    mapping(address => uint256) public balances;

    /// @notice deposit ether into the contract
    /// @dev it should work properly when called multiple times
    function addEther() external payable {
        require(msg.value > 0, "Must send some Ether");

        // Increase the sender's balance by the amount of Ether sent
        balances[msg.sender] += msg.value;
    }

    /// @notice used to withdraw ether from the contract
    /// @param amount of ether to remove. Cannot exceed balance, i.e., users cannot withdraw more than they deposited
    function removeEther(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Deduct the amount from the user's balance before transferring
        balances[msg.sender] -= amount;

        // Transfer the specified amount to the sender
        (bool sent, ) = msg.sender.call{value: amount}("");
        require(sent, "Failed to send Ether");
    }
}
