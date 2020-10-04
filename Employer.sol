pragma solidity ^0.5.5;

import "browser/students.sol";

contract Employer {
    studentDetails s1 = studentDetails(0xd9145CCE52D386f254917e481eB44e9943F39138);
    
constructor () public {    
}

function checkBgc(address vaddress) view public returns (string memory) {
    
    if(s1.validateStudent(vaddress)){
        return "Valide";}
        return "Invalide";
}
}
