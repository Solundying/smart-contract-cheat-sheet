// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSigWallet {
    address[] public owners;
    uint public required;

    struct Transaction {
        address to;
        uint value;
        bool executed;
    }

    mapping(uint => Transaction) public transactions;
    uint public transactionCount;

    constructor(address[] memory _owners, uint _required) {
        owners = _owners;
        required = _required;
    }

    function submitTransaction(address to, uint value) public {
        transactions[transactionCount] = Transaction({
            to: to,
            value: value,
            executed: false
        });
        transactionCount++;
    }
}
