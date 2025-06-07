# RL NFT Collection
## Overview 🪙
RL (Red Linuxera) is an NFT collection based on the ERC-721 standard. This NFT collection is deployed on the Arbitrum Network, an efficient and low-cost network.
## Features 📃
* Mint the amount of NFTs you want
* Image files remain secure thanks to the IPFS protocol
* Use the Arbitrum network to deploy the ERC721 contract, a cheap, fast, and secure network
## Technical details ⚙️
* Framework CLI -> Foundry.
* Forge version -> 1.1.0-stable.
* Solidity compiler version -> 0.8.24.
* Deployment network -> Arbitrum
## Deploying the contract 🛠️
1. Clone the GitHub repository.
2. Open Visual Studio Code (you should already have Foundry installed).
3. Select "File" > "Open Folder", select the cloned repository folder.
4. Create a new file called ".env" in your project folder.
5. In the .env file, write "PRIVATE_KEY = 0x" followed by your private key, which you'll use to pay for the NFT token deployment fees.
6. In the same .env file, write "ETHERSCAN_API_KEY" on the line below, followed by your API KEY, which you can create at https://arbiscan.io/apidashboard.
7. In the project navigation bar, open the "DeployNFTCollection.s.sol" file located in the "script" folder.
8. In the toolbar above, select "Terminal" > "New Terminal".
9. Select the "Git bash" terminal (previously installed).
10. Run the `forge build` command to compile the project.
11. Go to https://chainlist.org/ and search the Arbitrum network for a reliable RPC server address. I recommend https://arb1.arbitrum.io/rpc.
12. Run the command `forge script script/DeployNFTCollection.s.sol --rpc-url https://arb1.arbitrum.io/rpc --broadcast --verify` to deploy the script and verify it within the Arbitrum network.
13. Check the output of the terminal and copy the address of the deployed smart contract (RLNFTCollection).
14. Enter the address of the NFT collection at https://arbiscan.io/ and within the "Contract" tab look for the "mint" function to mint the 2 tokens of the NFT collection (you must have Metamask or another wallet previously installed in your browser).
15. Enter the address of the NFT collection at https://opensea.io/ to search for it and that's it.
16. Run `forge coverage` to generate a code coverage report, which allows you to verify which parts of the "stakingApp.sol" and "stakingToken.sol" scripts code (in the "src" folder) are executed by the tests. This helps identify areas outside the coverage that could be exposed to errors/vulnerabilities.
