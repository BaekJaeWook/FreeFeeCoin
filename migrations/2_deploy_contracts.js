var FreeFeeCoin = artifacts.require("./constracts/FreeFeeCoin.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(FreeFeeCoin, 'FRE', 'FreeFeeCoin');
};
