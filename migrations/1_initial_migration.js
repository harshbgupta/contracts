//1. PZCoin
/*const PZCoin = artifacts.require("PZCoin");

module.exports = function (deployer) {
  deployer.deploy(PZCoin);
};*/


//2. ChesSROld
/*const ChesSR_Old = artifacts.require("ChesSR_Old");

module.exports = function (deployer) {
  deployer.deploy(ChesSR_Old);
};*/


//3. ChesSR
const ChesSR = artifacts.require("ChesSR");

module.exports = function (deployer) {
  deployer.deploy(ChesSR);
};
