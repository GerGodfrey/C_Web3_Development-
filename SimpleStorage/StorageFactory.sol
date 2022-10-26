
// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorage_Array;

    function createSimpleStorageContract() public {
        //How does storage factory know what simple storage looks like?
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorage_Array.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

        SimpleStorage simpleStorage = simpleStorage_Array[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStorage = simpleStorage_Array[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}