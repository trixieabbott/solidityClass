// SPDX-License-Identifier: MIT

//How to deploy a smart contract inside of another smart contract

pragma solidity >=0.6.0 <0.9.0;

//finding the file
import "./SimpleStorage.sol"; 

//INHERITANCE IN SOLIDITY:
contract StorageFactory is SimpleStorage {
    
    //array of contracts
    SimpleStorage[] public simpleStorageArray;
    
    //creates aa simpleStorage contract
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    //stores it in the array at the index and puts number on it
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // to interact with a contract, you need 2 things:
        // Address 
        // ABI : Application Binary Interface
        //this line has an explicit cast to the address type and initializes a new SimpleStorage object from the address
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber); 

        //this line simply gets the SimpleStorage object at the index _simpleStorageIndex in the array simpleStorageArray
        //simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    
    //
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        //this line has an explicit cast to the address type and initializes a new SimpleStorage object from the address 
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve(); 

        //this line simply gets the SimpleStorage object at the index _simpleStorageIndex in the array simpleStorageArray
        //return simpleStorageArray[_simpleStorageIndex].retrieve(); 
    }
}