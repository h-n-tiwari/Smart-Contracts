// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import "hardhat/console.sol";

contract Owner {
    address private owner;

    event OwnerSet(address indexed oldOwner, address indexed newOwner);

    modifier isOwner() {
        require(msg.sender == owner, "Caller isn't owner");
        _;
    }

    constructor() {
        console.log("Owner contract deployed by:", msg.sender);
        owner = msg.sender;
        emit OwnerSet(address(0), owner);
    }

    function changeOwner(address newOwner) public isOwner {
        require(
            newOwner != address(0),
            "New owner should not be the zero address"
        );

        emit OwnerSet(owner, newOwner);
        owner = newOwner;
    }

    function getOwner() external view returns (address) {
        return owner;
    }
}