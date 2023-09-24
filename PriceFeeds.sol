// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceFeeds {

    address public BTC_ETH = 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22;
    address public BTC_USD = 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43;
    address public CZK_USD = 0xC32f0A9D70A34B9E7377C10FDAd88512596f61EA;
    address public DAI_USD = 0x14866185B1962B63C3Ea9E03Bc1da838bab34C19;
    address public ETH_USD = 0x694AA1769357215DE4FAC081bf1f309aDC325306;
    address public EUR_USD = 0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910;
    address public JPY_USD = 0x8A6af2B75F23831ADc973ce6288e5329F63D86c6;
    address public LINK_ETH = 0x42585eD362B3f1BCa95c640FdFf35Ef899212734;
    address public LINK_USD = 0xc59E3633BAAC79493d908e63626716e204A45EdF;
    address public USDC_USD = 0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E;

    function get_BTC_ETH_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(BTC_ETH);
    }

    function get_BTC_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(BTC_USD);
    }

    function get_CZK_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(CZK_USD);
    }

    function get_DAI_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(DAI_USD);
    }

    function get_ETH_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(ETH_USD);
    }

    function get_EUR_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(EUR_USD);
    }

    function get_JPY_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(JPY_USD);
    }

    function get_LINK_ETH_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(LINK_ETH);
    }

    function get_LINK_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(LINK_USD);
    }

    function get_USDC_USD_Data() external view returns (int answer, uint8 decimals) {
        return _getLatestData(USDC_USD);
    }

    function _getLatestData(address _address) internal view returns (int, uint8) {
        (,int answer,,,) = AggregatorV3Interface(_address).latestRoundData();
        uint8 decimals = AggregatorV3Interface(_address).decimals();
        return (answer, decimals);
    }

}
