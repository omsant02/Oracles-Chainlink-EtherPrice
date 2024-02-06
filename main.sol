// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract EtherUSDPrice {

 AggregatorV3Interface internal priceFeed;

 constructor(){
    priceFeed=AggregatorV3Interface(0x0715A7794a1dc8e42615F059dD6e406A6594651A);
 }

 function getLatestPrice() public view returns(int){
        (,int price, , ,)=priceFeed.latestRoundData();
        return price;
 }

}