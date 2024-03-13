// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai6{
    uint [2]array;
    constructor(){
        array[0]=4;
        array[1]=2;
    }
    function getArray()view public returns(uint [2] memory){
        return array;
    }
}