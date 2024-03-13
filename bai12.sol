pragma solidity >=0.6.12 <0.9.0;

contract ZombieFactory {

    struct Zombie{
        address addr;
        string name;
        uint dna;
    }

    Zombie []public zombie;

    event eventAddZom(address add,string name,uint dna);

    mapping (address => Zombie)public print;
    mapping (address => uint) statementToEnd;
    //mapping (uint => address) zom;

    function addZombie(string memory str,uint dna)private{
        zombie.push(Zombie(msg.sender,str,dna));
        uint id = zombie.length;
        print[msg.sender] = Zombie(msg.sender,str,dna);
        statementToEnd[msg.sender] ++;
        //zom[id] = msg.sender;
        emit eventAddZom(msg.sender, str, dna);
    }

    function createDna(string memory str)private returns(uint){
        uint rand = uint(keccak256(abi.encodePacked(str)));
        return rand % 10 ** 16;
    }

    function createZombieRandom (string memory str)public {
        require(statementToEnd[msg.sender] == 0,"????");
        uint dna = createDna(str);
        addZombie(str,dna);
    }

}