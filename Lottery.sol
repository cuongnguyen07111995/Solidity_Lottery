// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Lottery {
    address payable[] public addressOfUsers; 
    uint public usdEntryFee;
    AggregatorV3Interface internal ethUsdPriceFeed;
    constructor(address _priceFeedAddress){
        usdEntryFee = 50 * (10**18);
        ethUsdPriceFeed = AggregatorV3Interface(_priceFeedAddress);
    }
    function enter() public {}
    function getEntranceFee() public view returns(int) {
         (,int price,,,) = ethUsdPriceFeed.latestRoundData();
         return price;
    }
    function startLottery() public  {}
    function endLottery() public {}
}
