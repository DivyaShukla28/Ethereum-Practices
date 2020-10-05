pragma solidity ^0.5.17;

contract landRegistration {
    
    struct land {
        
        string iName;
        uint id;
        string state;
        address accountAddress;
        }
    
    address Owner;
        
        mapping (address=> land) landMaps;
        
        address[] landAccts;
        
      constructor() public {
          Owner = msg.sender;
          }
        
        modifier ifowner() {
        
        require (Owner == msg.sender);
              _;
             }
             
         function insertDetails(address _address,string memory _iName,uint _id,string memory _state) public ifowner {
             
             landMaps[_address].accountAddress = _address;
             landMaps[_address].iName = _iName;
             landMaps[_address].id = _id;
             landMaps[_address].state = _state;
            landAccts.push(_address) +1;
             
         }
         function updatedetails(address _address,string memory _iName,uint _id,string memory _state) public{
             
             landMaps[_address].iName = _iName;
             landMaps[_address].id = _id;
             landMaps[_address].state = _state;
             }
             
         function getlandDetails(address _address)view public returns(string memory,uint,string memory) {
             
             return (landMaps[_address].iName,landMaps[_address].id,landMaps[_address].state);
              }     
             
         function getlandMaps()view public returns (address[]memory){
            
             return landAccts;
         }
         
         function chnageOwner(address _newOwnerAddress) public ifowner {
             Owner = _newOwnerAddress;
         }
}
