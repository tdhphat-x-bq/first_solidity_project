// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai5{
    function thu(uint age,string memory sex)view public returns (uint,string memory){
        return (age,sex);
    }
    function getAll() public{
        thu(16,"nu"); 
    }
}