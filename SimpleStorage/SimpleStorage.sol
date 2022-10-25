
// min 2 53 38

// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; 

contract SimpleStorage {
    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name; 
    }

    People[] public people;  //este arreglo es dinámico, pero podemos hacerlo estatico [2]
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber ;  
        // favoriteNumber = _favoriteNumber + 1 ;//es más costosa  
    }

    //https://docs.soliditylang.org/en/latest/cheatsheet.html#function-visibility-specifiers 
    //view or pure dont use gas for the bllockchain 
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }


    // we can use just for arrays, struct or mapping : calldata (temporarily and never will be modify), memory(temporarily) or storage (exist outside)

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber ,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function addPerson2 (string memory _name, uint256 _favoriteNumber) public {
        People memory person = People({favoriteNumber: _favoriteNumber, name:_name});
        people.push(person);
    }

}