pragma solidity 0.6.2;

/**
 * @title RegistryControllerInterface
 * @dev An Interface for RegistryController.
*/

import '../Registry/Registry.sol';
import '../RegistryToken/RegistryToken.sol';
// import "../../node_modules/@openzeppelin/contracts/proxy/TransparentUpgradeableProxy.sol";

interface RegistryControllerI {
    function initialize(address _registryProxy, RegistryToken _registryTokenProxy, address _own) external;
    function setStakePrice(uint256 _newStakePrice) external;
    function createRegistryEntry(string calldata _subdomain, string calldata _ref) external;
    function setRef(string calldata _newRef) external;   
    function setRegistryEntryRef(string calldata _subdomain, string calldata _newRef) external;
    function getRef() external returns (string memory);
    function getStakePrice() external returns (uint256);
    function getRegistryEntryRef(string calldata _subdomain) external returns (string memory);
    function getTransparentProxyAdmin(address payable _transparentProxyAddress) external returns (address);
    function getProxyImplementation(address payable _transparentProxyAddress) external returns (address);
    function upgradeTransparentProxy(address payable _transparentProxyAddress, address payable _transparentProxyUpgradeAddress) external;
}