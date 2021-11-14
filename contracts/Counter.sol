pragma solidity ^0.8.9;

contract Counter {
  uint256 counter;

  function addOne() public {
    counter++;
  }

  function substractOne() public {
    counter--;
  }

  function getCounter() public view returns (uint256) {
    return counter;
  }
}