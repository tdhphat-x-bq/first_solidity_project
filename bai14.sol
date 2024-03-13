pragma solidity >=0.6.12 <0.9.0;

contract SandwichFactory {
  struct Sandwich {
    string name;
    string status;
  }

  Sandwich[2] public sandwiches;

  event added (Sandwich sa);

  function add()private{
    sandwiches[0] = Sandwich("bread","noodle");
    emit added(sandwiches[0]);
    //sandwiches[1] = Sandwich("fish","beef");
    //emit added("fish","beef");
  }

  function eatSandwich(uint _index) public {
    add();
    Sandwich storage mySandwich = sandwiches[_index];
    mySandwich.status = "Eaten!";

    // If you just want a copy, you can use `memory`:
    Sandwich memory anotherSandwich = sandwiches[_index + 1];
    anotherSandwich.status = "Eaten!";
    sandwiches[_index + 1] = anotherSandwich;
  
  }
}