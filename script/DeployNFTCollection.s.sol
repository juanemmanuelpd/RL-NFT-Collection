// License
// SPDX-License-Identifier: UNLICENSED

// Solidity version compiler
pragma solidity 0.8.24;

// Libraries
import {Script} from "forge-std/Script.sol";
import {RLNFTCollection} from "../src/RLNFTCollection.sol";

//Contract
contract DeployNFTCollection is Script{

    function run() external returns(RLNFTCollection) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        string memory name_ = "Red Linuxera NFT";
        string memory symbol_ = "RLNFT";
        uint256 totalSupply_ = 2;
        string memory baseUri_ = "ipfs://bafybeigratsybfjiyirmr7jcsrn5wlt2z6an5xwjembyrurllmh75u5lim/";        
        RLNFTCollection nftCollection = new RLNFTCollection(name_, symbol_, totalSupply_, baseUri_);
        vm.stopBroadcast();
        return nftCollection;
    }

}