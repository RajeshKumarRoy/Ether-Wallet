// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

interface iWallet
{
    event EtherExtracted(address indexed from, address indexed to, uint256 amount, uint256 timestamp);

    function extractEther(address payable account, uint256 amount) external returns (bool);
    function extractAllEther(address payable account) external returns (bool);

    receive() external payable;
}
