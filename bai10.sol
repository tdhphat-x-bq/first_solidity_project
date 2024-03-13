pragma solidity >=0.6.12 <0.9.0;

contract ZombieFactory {
    event addZombie(string name, uint id, uint dna);
    struct Zombie{
        string name;
        uint dna;
    }
    uint mod = 10 ** 16;

    Zombie []public zombies;

    function _createZombie(string memory _name,uint _dna)private {
        zombies.push(Zombie(_name, _dna));
        uint id=zombies.length;
        emit addZombie(_name, id, _dna);
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