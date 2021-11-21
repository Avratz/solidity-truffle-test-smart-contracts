const TestContract = artifacts.require("contracts/TestContract.sol");
const Counter = artifacts.require("contracts/Counter.sol");
const StoreInArray = artifacts.require("contracts/StoreInArray.sol");
const Will = artifacts.require("contracts/Will.sol");
const ArsCoin = artifacts.require("contracts/ArsCoin.sol");

module.exports = function (deployer) {
  deployer.deploy(TestContract);
  deployer.deploy(Counter);
  deployer.deploy(StoreInArray);
  deployer.deploy(Will);
  deployer.deploy(ArsCoin);
};
