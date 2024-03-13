// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract bai8{
    // string [2] str;
    // function addCharacter(string memory s,string memory t)public {
    //     str[0]=s;
    //     str[1]=t;
    // }
    // function print()public returns (string [2]memory) {
    //     addCharacter("", "");
    //     return str;
    // }
    string [] public str;
    event addchar(string s,string t,string []str);
    
    function addChar(string memory s,string memory t)public returns(string []memory){
        str.push(s);
        str.push(t);
        emit addchar(s, t, str);
        return str;
    }
}