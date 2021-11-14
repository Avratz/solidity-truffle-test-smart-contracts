const TestContract = artifacts.require("contracts/TestContract.sol");

module.exports = function (deployer) {
  deployer.deploy(TestContract);
};
