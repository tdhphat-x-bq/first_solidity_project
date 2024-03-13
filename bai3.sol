// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai3{
    struct thu{
        uint age;
        string sex;
    }
    function getAll() view public returns(thu memory){
        thu memory myThu;
        myThu.age = 17;
        myThu.sex = "nu";
        return myThu;
    }
}