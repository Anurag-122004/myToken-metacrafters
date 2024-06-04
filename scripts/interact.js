// scripts/interact.js
const { ethers } = require("hardhat");

async function main() {
    const [deployer, user] = await ethers.getSigners();
    const MyToken = await ethers.getContractFactory("MyToken");

    const myTokenAddress = "0x5FbDB2315678afecb367f032d93F642f64180aa3";
    const myToken = MyToken.attach(myTokenAddress);

    
    console.log("Minting tokens...");
    await myToken.mint(user.address, 1000);
    console.log("Minted 1000 tokens to", user.address);


    console.log("Transferring tokens...");
    await myToken.connect(user).transfer(deployer.address, 100);
    console.log("Transferred 100 tokens from", user.address, "to", deployer.address);

    
    console.log("Burning tokens...");
    await myToken.connect(user).burn(50);
    console.log("Burned 50 tokens from", user.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
