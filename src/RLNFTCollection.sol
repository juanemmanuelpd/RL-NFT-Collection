// License
// SPDX-License-Identifier: UNLICENSED

// Solidity version compiler
pragma solidity 0.8.24;

// Libraries
import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {Strings} from "../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// Contract
contract RLNFTCollection is ERC721{

    using Strings for uint256;

    // Variables
    uint256 public currentTokenID;
    uint256 public totalSupply;
    string public baseUri;

    // Events
    event mintNFT(address userAddress_, uint256 tokenID_);
    
    // Constructor
    constructor(string memory name_, string memory symbol_, uint256 totalSupply_, string memory baseUri_) ERC721(name_, symbol_){
        totalSupply = totalSupply_;
        baseUri = baseUri_;
    }

    // Functions
    function mint() external{
        require(currentTokenID < totalSupply, "Sold out");
        _safeMint(msg.sender, currentTokenID);
        uint256 id = currentTokenID;
        currentTokenID ++;
        emit mintNFT(msg.sender, id);
    }

    function _baseURI() internal override view virtual returns (string memory) {
        return baseUri;
    }

    function tokenURI(uint256 tokenId) public override view virtual returns (string memory) {
        _requireOwned(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenId.toString(), ".json") : "";
    }

}