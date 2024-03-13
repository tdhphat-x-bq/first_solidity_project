// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai1 {
  string private message = "hi";
  uint b=2;
  uint a=5;
  function getMessage(uint a,uint b) pure public returns (uint){
    return b**a;
  }
}