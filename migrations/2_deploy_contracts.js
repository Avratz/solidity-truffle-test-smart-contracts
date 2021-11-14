const TestContract = artifacts.require("contracts/TestContract.sol");
const Counter = artifacts.require("contracts/Counter.sol");
const StoreInArray = artifacts.require("contracts/StoreInArray.sol");

module.exports = function (deployer) {
  deployer.deploy(TestContract);
  deployer.deploy(Counter);
  deployer.deploy(StoreInArray);
};
