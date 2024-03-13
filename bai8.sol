// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai10{
  uint a=4;
  int b=6;
  uint c=a*uint (b);
  function getNumber()view public returns(uint){
    return c;
  }
}