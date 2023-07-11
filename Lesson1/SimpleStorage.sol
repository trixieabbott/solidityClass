// SPDX-License-Identifier: MIT

// LESSON 1

//first define the version you want
//this is anything between 0.6 and 0.9
pragma solidity >=0.6.0 <0.9.0;

//name your contract
contract SimpleStorage {

    //can have int, uint256, bool
    //favoriteNumber starts as 0
    //address favoriateAdddress = 0xlakjdslkdjfalksjdfslkdjf;
    uint256 favoriteNumber;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    //dictionary
    mapping(string => uint256) public nameToFavoriteNumber;

    //will change the value of favoriteNumber
    //functions can be external, internal, public, or private
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    //view function
    //pure functions purely dod some type of math, like adding to a variable
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    //string in solidity is an array
    //so we haave decide where we want to store its memory
    //storage means keep it forever
    //always use string memory for now
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //pushs a Person to the array of peopl
        //makes a key value pair with name to their favorite number
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}