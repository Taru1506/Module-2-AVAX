// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleContract {
    uint256 public data;

    function setData(uint256 _value) public {
        data = _value;
    }

    function getData() public view returns (uint256) {
        return data;
    }
}