const Web3 = require('web3');
const BigNumber = require('bignumber.js');
const web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545")) // Hardcoded development port

const gasTestABI = [{"constant":true,"inputs":[],"name":"temp","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"loops","type":"uint256"}],"name":"doWork","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"}];

const GasTest = artifacts.require('./GasTest.sol');

contract('GasTest', accounts => {

  it("Should check gas can be set to anything for calls", async () => {
    let gasTest = await GasTest.new();
    const gasTestContract = new web3.eth.Contract(gasTestABI, gasTest.address);
    try {
      console.log(await gasTestContract.methods.doWork(2000).send({gas: 7000000, from: accounts[0]}));
    } catch (error) {
      console.log("Send failed: " + error);
    }
    let data = gasTestContract.methods.doWork(2000).encodeABI();
    let options = {
        gasLimit: web3.utils.toHex(10000000),
        to: gasTest.address,
        data: data,
        from: accounts[0]
    };
    web3.eth.call(options);
  });

});
