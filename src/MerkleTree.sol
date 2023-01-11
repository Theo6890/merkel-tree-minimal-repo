// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// solhint-disable-next-line no-empty-blocks
contract MerkleTree {
    bytes32 public root;
    bytes32[] public nodes;
    bytes32[] public leaves;
}
