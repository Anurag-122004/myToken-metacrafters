// contracts/MyToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("Anurag'sToken", "AT") Ownable(msg.sender) {}

    function mint(address to, uint256 _Amount) public onlyOwner{
        _mint(to, _Amount * 10 ** decimals());
    }

    function decimals() override public pure returns (uint8) {
        return 0;
    }

    function transferringofTokens(address _Reciever, uint256 _Amount) external {
        require(balanceOf(msg.sender) >= _Amount , "You do not have enough Degen tokens");
        approve(msg.sender, _Amount);
        transferFrom(msg.sender, _Reciever, _Amount);
    }

    function burn(uint256 _Amount) public {
        require(balanceOf(msg.sender) >= _Amount, "You do not have enough Degen Tokens");
        _burn(msg.sender, _Amount);
    }
}
