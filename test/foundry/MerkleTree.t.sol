// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import {MerkleTree} from "../../src/MerkleTree.sol";

import {MerkleTreeFixtures} from "../fixtures/MerkleTreeFixtures.sol";

contract MerkleTreeTest is Test {
    MerkleTree public tree;
    MerkleTreeFixtures public fixtures;

    function setUp() public {
        tree = new MerkleTree();
        fixtures = new MerkleTreeFixtures();
    }

    /*//////////////////////////////////////////////////////////////
                                 BASIC ATTRIBUTES
    //////////////////////////////////////////////////////////////*/
    function test_Truthy() public {
        assertTrue(true);
    }
}
