// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Adoption {
    //adopters is a variable -> an array of ethereum addresses
    address[16] public adopters;

    //Adopting a pet
    //in Solidity both, the parameter of the function and the output type must be specified
    function adopt (uint petId) public returns (uint){
        require(petId >= 0 && petId <=15);

        adopters[petId] = msg.sender;
        return petId;
    }
}