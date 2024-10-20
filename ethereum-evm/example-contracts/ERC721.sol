// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint public tokenCounter;

    constructor() ERC721("MyNFT", "MNFT") {
        tokenCounter = 0;
    }

    function mintNFT() public returns (uint) {
        _mint(msg.sender, tokenCounter);
        tokenCounter++;
        return tokenCounter - 1;
    }
}
