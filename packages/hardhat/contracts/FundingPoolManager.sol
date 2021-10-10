// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


contract FundingPoolManager is IFundingPoolManager {
    
    function purchase(uint256 poolId, address to, uint256 maturityDate) public payable returns (uint256);

    function redeem(uint256 poolId, uint256 bondId) public returns (bool);

    function transfer(uint256 poolId, uint256 bondId, address to) public returns (bool);

    function getPoolInfo(uint256 poolId) public view returns (address asset, uint256 apy, uint256 outstanding);

    function getBondInfo(uint256 poolId, uint256 bondId) public view returns (address, uint256, address, uint256, bool);

}
