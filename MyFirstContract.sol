pragma solidity 0.8.13;

contract MyFirstContract {
    string private name;
    uint private age;
    
    function setName(string memory newName) public {
        name = newName;
    }
    
    function getName() public view returns (string memory) {
        return name;
    }
    
    function setAge(uint newAge) public {
        age = newAge;
    }
    
    function getAge() public view returns (uint) {
        return age;
    }
}

interface Regulator{
    function checkValue(uint amount)  external returns (bool);
}

contract Bank is Regulator{
    uint private value;

    constructor(uint amount) public{
        value=amount;
    }

    function loan() public returns(bool){
        return value>0;
    }
    function checkValue(uint amount) public returns (bool){
        return value>amount;
    }
    function balance() public view returns(uint){
        return value;
    }
    function withdraw(uint amount) public{
        if(checkValue(amount)){
            value -= amount;
        }
    }

    function depost(uint amount ) public{
        value += amount;
    }
}