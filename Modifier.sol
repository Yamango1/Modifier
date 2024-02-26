// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AdminOnly() {
    address public admin;
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only Admin");
    _;
    }
    function changeAdmin(address newAdmin) public onlyAdmin {
        admin = newAdmin;
    }
}
