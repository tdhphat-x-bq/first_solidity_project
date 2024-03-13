// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract test{
    struct user{
        uint password;
        address addr;
        string name;
        uint balance;
   }
    mapping (uint => user) public check;
}