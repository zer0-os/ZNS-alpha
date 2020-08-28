pragma solidity ^0.6.0;

/**
 * @title Registry
 * @dev Manage individual Registry Entries
*/

contract Registry {
    string domain;
    string ref;
    string registryType;
    address stakeTokenAddress;
    uint256 stakePrice;

    function init(string memory _domain, string memory _ref, string memory _registryType, address _stakeTokenAddress) 
        public 
    returns (string memory, string memory) 
    {
        domain = _domain;
        ref = _ref;
        registryType = _registryType;
        stakeTokenAddress = _stakeTokenAddress;
    }

    function setStakePrice(uint256 _stakePrice) 
        public 
    returns(uint256) 
    {
        stakePrice = _stakePrice;
        return stakePrice;
    } 

    function getAddress() 
        public 
        view 
    returns (address) 
    {  
       address contractAddress = address(this);
       return contractAddress;
    }

    function getRef()
        public
        view
    returns (string memory)
    {
        return ref;
    }
}