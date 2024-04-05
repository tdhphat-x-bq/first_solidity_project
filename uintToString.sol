pragma solidity >=0.6.12 <0.9.0;

contract AddToString {
    function check(uint num) private returns(string memory) {
        if(num == 0){
             return "0";
        }
        else if(num == 1) {
            return "1";
        }
        else if(num == 2) {
            return "2";
        }
        else if(num == 3) {
            return "3";
        }
        else if(num == 4) {
            return "4";
        }
        else if(num == 5) {
            return "5";
        }
        else if(num == 6) {
            return "6";
        }
        else if(num == 7) {
            return "7";
        }
        else if(num == 8) {
            return "8";
        }
        else if(num == 9) {
            return "9";
        }
    }

    function reverse(string memory _str) private returns (string memory) {
        bytes memory strBytes = bytes(_str);
        assert(strBytes.length > 0);
        bytes memory result = new bytes(strBytes.length);
        for(uint i = 0; i < strBytes.length; i++) {
            result[i] = strBytes[strBytes.length - 1 - i];
        }
        return string(result);
    }

    function change(string memory str, uint number) private returns(string memory){
        while(number != 0) {
            uint temp = number % 10;
            number /= 10;
            str = string(abi.encodePacked(str, check(temp)));
        }

        return reverse(str);

    }

}