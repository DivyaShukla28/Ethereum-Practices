pragma solidity^0.5.17;

contract first {
    
    string word = "Hello Word" ;
    
    function getword() view public returns (string memory){
        return word;
    }
    
}
