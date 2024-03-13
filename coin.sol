pragma solidity >=0.6.12 <0.9.0;

contract coin {

   struct user{
        address addr;
        string name;
        uint password;
        uint balance;
   }

    mapping (address => user) public users;
   
    event User(address add, uint balance);
    event login(address add,uint password,string name);

    function transfer(address from,string memory name,uint password,address to,uint money)public{
        emit login(from,password,name);
        uint new_name1 = uint(keccak256(abi.encodePacked(users[from].name)));
        uint new_name2 = uint(keccak256(abi.encodePacked(name)));

        require(users[from].addr == from && new_name1 == new_name2 && users[from].password == password,
        "your information is not exist");
        require(users[to].addr == to, "this address is not exist");
        require(money <= users[from].balance,"ngheo bay dat chuyen tien");
        
        users[from].balance -= money;
        users[to].balance += money;

        emit User(from, users[from].balance);
        emit User(to, users[from].balance);
    }

    function recharge(address addUser,uint money)public{
        users[addUser].balance += money;
        emit User(addUser, users[addUser].balance);
    }

    function createPassword(string memory name) private returns(uint){
        uint password = uint(keccak256(abi.encodePacked(name)));
        return password % 1e16;
    }

    function addUser(address addressUser,string memory name,uint balance)public {
        uint temp = uint(keccak256(abi.encodePacked(name)));
        require(users[addressUser].addr == address(0) && temp == uint(0),"Adress already exists");
        uint password = createPassword(name);
        users[addressUser] = user(addressUser, name, password, balance);
    }

}
//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
//1000
//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
//123
//4925571748283563