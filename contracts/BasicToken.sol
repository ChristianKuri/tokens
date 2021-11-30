// SPDX-License-Identifier: MIT
// Token Address: https://testnet.bscscan.com/token/0x630374a2766819e267074eeb4b7bec93d16fe639
pragma solidity ^0.8.10;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract BasicToken is ERC20 {
    address public admin;

    constructor() ERC20("BasicToken", "BTKN") {
        _mint(msg.sender, 1000 * 10**18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}