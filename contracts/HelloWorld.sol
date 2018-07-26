pragma solidity ^0.4.24;

contract HelloWorld {
 address owner;
 string greeting="Hello World from Adebayo Account"; 

 // Constructor Function
 constructor() public{
     owner=msg.sender;
 }   

 function greet () constant public returns (string){
     return greeting;
 }

 function kill() public {
     require(owner==msg.sender);
     selfdestruct(owner);
 }
}