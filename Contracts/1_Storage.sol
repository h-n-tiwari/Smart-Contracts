// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

contract Storage {
    // State Variables (number)
    uint256 number;

    // State-Changing Functions (store)

    function store(uint256 num) public {
        number = num;
    }

    // Read-Only Functions (retrieve)

    function retrieve() public view returns (uint256) {
        return number;
    }
}