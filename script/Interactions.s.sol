//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

contract MintBasicNft is Script {
    string public constant KING_URI = "ipfs://Qmb95CHCny4GQSrXPnDiHXERpu4vjU4euPCEMe9HxdTtD4";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }
    function mintNftOnContract(address basicNftAddress) public { 
        vm.startBroadcast();
        BasicNft(basicNftAddress).mintNft(KING_URI);
        vm.stopBroadcast();
    }
}