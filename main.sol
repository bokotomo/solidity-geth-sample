pragma solidity ^0.8.0;

contract SingleNumRegister {
    uint256 storedData;

    function set(uint256 x) public {
        storedData = x;
    }

    function get() public returns (uint256 retVal) {
        return storedData;
    }

    function ok() public returns (string memory) {
        return "OKOKOKOK";
    }
}
