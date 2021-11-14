pragma solidity ^0.8.9;

contract StoreInArray {
  uint256[] store;

  function add(uint256 x) public {
    store.push(x);
  }

  function getAll() public view returns (uint256[] memory){
    return store;
  }
  
}