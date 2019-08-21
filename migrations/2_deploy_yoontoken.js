var yoontoken = artifacts.require("./yoontoken.sol");

module.exports = function (deployer) {
    deployer.deploy(yoontoken);
};