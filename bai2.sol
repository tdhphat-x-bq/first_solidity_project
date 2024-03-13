// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai2{
    int bien=100**2;
    function getBien()view public returns (int){
        return bien;
    }
}