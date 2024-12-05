// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/UBToken.sol";

contract UBTokenDeploy {
    address private constant recipient = 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc;

    function deploy() public {
        // Initial supply is 1,000,000 tokens, with 18 decimals
        uint256 initialSupply = 1000000 * 10 ** 18;

        // Deploy the UBToken contract
        UBToken token = new UBToken(initialSupply);

        // Transfer 100 tokens to the recipient
        token.transfer(recipient, 100 * 10 ** 18);
    }
}