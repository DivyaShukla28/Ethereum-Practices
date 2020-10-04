pragma solidity ^0.7.1;

contract Bank {
    
    address payable client;
    bool _switch=false;
    
    constructor() public {
        client =msg.sender;
    }
    
    modifier ifOwner(){
        require(client==msg.sender , "you are nor owner");
        _;
        
    }
    
    function depositfunds() public payable {
        
    }
    
    function withdrawfunds(uint amount) public ifOwner {
        if(client.send(amount)) {
            _switch=true;
            
        }
        else {
            _switch=false;
        }
    }
    function getfunds() view public ifOwner returns(uint) {
        return address(this).balance;
        
    }
    function transferfunds(address payable receipentaddress,uint _amount) public ifOwner{
        receipentaddress.transfer(_amount);
        }
}
