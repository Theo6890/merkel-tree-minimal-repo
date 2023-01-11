// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract MerkleTreeFixtures {
    bytes32[] public hashedLeaves = [
        keccak256("apple"),
        keccak256("banana"),
        keccak256("cherry"),
        keccak256("date"),
        keccak256("elderberry"),
        keccak256("fig"),
        keccak256("grape")
    ];

    /// Nodes at level 1
    // appleBananaHash
    bytes32 public node1 =
        keccak256(abi.encodePacked(hashedLeaves[0], hashedLeaves[1]));
    // cherryDateHash
    bytes32 public node2 =
        keccak256(abi.encodePacked(hashedLeaves[2], hashedLeaves[3]));
    // elderberryFigHash
    bytes32 public node3 =
        keccak256(abi.encodePacked(hashedLeaves[4], hashedLeaves[5]));
    // grapeGrapeHash
    bytes32 public node4 =
        keccak256(abi.encodePacked(hashedLeaves[6], hashedLeaves[6]));

    /// Nodes at level 2
    // appleBanana_CherryDateHash
    bytes32 public node5 = keccak256(abi.encodePacked(node1, node2));
    // cherryDate_ElderberryFigHash
    bytes32 public node6 = keccak256(abi.encodePacked(node2, node3));
    // elderberryFig_GrapeGrapeHash
    bytes32 public node7 = keccak256(abi.encodePacked(node3, node4));

    // Nodes at level 3
    // appleBananaCherryDate_CherryDateElderberryFigHash
    bytes32 public node8 = keccak256(abi.encodePacked(node5, node6));
    // cherryDateElderberryFig_ElderberryFigGrapeGrapeHash
    bytes32 public node9 = keccak256(abi.encodePacked(node6, node7));
}
