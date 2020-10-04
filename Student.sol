pragma solidity ^0.5.5;

contract studentDetails {
    
    struct student {
        string sname;
        string degree;
        uint year;
        uint roll;
        address accountaddress;
        
    }
    address owner;
    
    mapping (address=> student) students;
    
    address[] studentAccts;
    
    constructor () public {
        owner = msg.sender;
        
        }
    modifier ifowner(){
        
        require (owner == msg.sender);
              _;
              
             }
             
             function insertDetails(address _address,string memory _sname,string memory _degree,uint _year,uint _roll) public ifowner {
                 
                 students[_address].accountaddress = _address;
                 students[_address].sname = _sname;
                 students[_address].degree = _degree;
                 students[_address].year = _year;
                 students[_address].roll = _roll;
                 studentAccts.push(_address) +1;
                 
                 }
                 
                function updatedetails(address _address,string memory _sname, string memory _degree) public {
                    
                    students[_address].sname = _sname;
                    students[_address].degree = _degree;
                    
                }
                
            function getstudentDetails(address _address)view public returns(string memory,string memory,uint,uint) {
                
                return (students[_address].sname,students[_address].degree,students[_address].year,students[_address].roll);
                
                 }
                
            function getstudentss()view public returns(address[]memory) {
                  
                  return studentAccts;
                  
            } 
            function countstudentss()view public returns (uint) {
                
                return studentAccts.length;
                
            }  
            function validatestudent(address valAddress) view public returns (bool){
                
                if((students[valAddress].accountaddress == valAddress)) {
                    
                    return true;
                    }
                    
                else {
                    return false;
                    
                }
                
                }        
                }
