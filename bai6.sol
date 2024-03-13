// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai7{
    struct thu{
        uint age;
        string feature;
    }
    thu [] Thu;
    function addToArray()public{
        Thu.push(thu(14,"ham"));
        Thu.push(thu(15,"khum"));
        Thu.push(thu(16,"dan"));
    }
    function getArray()view public returns(thu [] memory){
        return Thu;
    }
}