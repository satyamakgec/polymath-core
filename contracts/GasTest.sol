pragma solidity ^0.4.21;

contract GasTest {

  uint256 public temp;

  function doWork(uint256 loops) public returns (uint256) {
    for (uint256 i = 0; i < loops; i++) {
      temp = temp + i;
    }
    return temp;
  }

}
