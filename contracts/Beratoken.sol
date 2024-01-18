// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Beratoken is ERC20, ERC20Burnable {
    uint256 public constant MAX_SUPPLY = 1000000 ether;

    constructor() ERC20("Beratoken", "BRT") {
        _mint(msg.sender, MAX_SUPPLY);
    }
}
