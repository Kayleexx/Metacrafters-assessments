// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.3.0/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address private owner;

    constructor() ERC20("Degen Token", "DEGEN") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function redeem(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
