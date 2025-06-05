// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./Simple.sol";

contract StorageFactory is SimpleStorage {

    SimpleStorage[] public simpleArray;
    uint[] storeNum;

    function createStorage(uint _index) public returns (SimpleStorage){
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleArray.push(simpleStorage);
        return simpleArray[_index];
    }

    function store(uint _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 3;
    }

    // function sfStore(uint _index, uint _favoriteNumber) public  {
    //     SimpleStorage simpleStorage = simpleArray[_index];
    //     simpleStorage.store(_favoriteNumber);
    // }

    // function retrieve(uint _index) public view returns (uint) {
    //     SimpleStorage simpleStorage = simpleArray[_index];
    //     return simpleStorage.retrieve();
    // }

}
