// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.26;

contract RCCStake {
    // contract owner
    address private owner;
    // map[chainID]address
    mapping (uint256 => address) private ChainAddr;
    // map[chainID]weight
    mapping (uint256 => uint256) private ChainWeight;  
    // map[chainID]minDepositAmount
    mapping (uint256 => uint256) ChainMinDepositAmount;
    // map[chainID]map[user_address]balance
    mapping (uint256 => mapping (address => uint256)) private balance;
  
    modifier onlyOwner{
        require(msg.sender == owner, "only owner allowed");
        _;
    }

    constructor(address _owner) {
        owner = _owner;
    }
}