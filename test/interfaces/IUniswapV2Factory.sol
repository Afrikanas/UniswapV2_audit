// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Interface of 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f

interface UniswapV2Factory {
    event PairCreated(address indexed, address indexed, address, uint256);

    // Read Only function
    function getPair(address, address) external view returns (address);
    function allPairs(uint256) external view returns (address);
    function allPairsLength() external view returns (uint256);

    function createPair(address, address) external returns (address);
    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);
    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}
