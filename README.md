# MyToken Project

This project demonstrates the creation, deployment, and interaction with an ERC20 token using Solidity, Hardhat, and Ethers.js.

## Project Structure

- `contracts/MyToken.sol`: The ERC20 token smart contract with minting and burning functionalities.
- `scripts/deploy.js`: Script to deploy the smart contract.
- `scripts/interact.js`: Script to interact with the deployed contract (mint, transfer, burn tokens).
- `hardhat.config.js`: Hardhat configuration file.

## Prerequisites

- Node.js and npm installed
- Hardhat installed
- A code editor like VS Code

## Setup

1. **Clone the repository**:
   git clone https://github.com/your-username/mytoken.git
   cd mytoken
   Install dependencies:


npm install
Compile the smart contract:

npx hardhat compile

Deployment
Deploy the smart contract to the Hardhat local network:

npx hardhat run scripts/deploy.js

npx hardhat run scripts/interact.js

You now have a full project setup for creating, deploying, and interacting with an ERC20 token using Hardhat, Ethers.js, and Solidity.
