pragma solidity >=0.6.12 <0.9.0;

contract ZombieFactory {
    //event addZombie(address addr,string name, uint id, uint dna);
    
    struct Zombie{
        address addr;
        string name;
        uint dna;
    }
    uint mod = 10 ** 16;
    uint id=0;
    mapping (address => Zombie)public zom;
    //Zombie []public zombies;

    function _createZombie(string memory _name,uint _dna)private {
        zom[msg.sender] = Zombie(msg.sender,_name,_dna);
        id += 1;
        //emit addZombie(msg.sender,_name, id, _dna);
    }

    function _createRandomIdOfZombie(string memory str)private returns(uint){
        uint rand = uint(keccak256(abi.encodePacked(str)));
        return rand % mod;
    }

    function createZombieRandom(string memory name) public {
       uint dna=_createRandomIdOfZombie(name);
       _createZombie(name, dna);
    }
}