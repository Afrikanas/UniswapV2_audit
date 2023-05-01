// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import {UniswapV2Factory} from "./interfaces/IUniswapV2Factory.sol";

contract TestUniswapV2Factory is Test {
    address public factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address public USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address public USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address public WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    string public MAINNET_RPC_URL = vm.envString("MAINNET_RPC_URL");
    uint256 public mainnetFork;

    function setUp() public {
        mainnetFork = vm.createFork(MAINNET_RPC_URL);
        vm.selectFork(mainnetFork);
        vm.rollFork(17_168_348);
    }

    function test_getPair() public {
        assertEq(UniswapV2Factory(factory).getPair(USDC, USDT), 0x3041CbD36888bECc7bbCBc0045E3B1f144466f5f);
    }

    function test_allPairsLength() public {
        assertEq(UniswapV2Factory(factory).allPairsLength(), 170883);
    }
}
