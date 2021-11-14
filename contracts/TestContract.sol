pragma solidity ^0.8.9;

contract TestContract {
    uint testContract;
    uint256[] randomNum = [14,68,99,6,4];

    function double(uint x) public pure checkOdd(x) returns (uint) {
      return x * 2;
    }

    modifier checkOdd(uint number) {
      require(number % 2 == 0);
      _;
    }

    function indexOf(uint256 num) public view returns (uint256) {
      for (uint256 i = 0; i < randomNum.length; i++){
        if (num == randomNum[i]){
          return i;
        }
      }
      return 99;
    }
    
}