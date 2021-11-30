// SPDX-License-Identifier: MIT
// Token Address: https://testnet.bscscan.com/token/0x99c22b783afa4ee01c7ac3ffb5f1a4fc8e7caa05
pragma solidity ^0.8.10;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract BasicToken is ERC20 {
    constructor() ERC20("BasicToken", "BTKN") {
        _mint(msg.sender, 1000 * 10**18);
    }
}