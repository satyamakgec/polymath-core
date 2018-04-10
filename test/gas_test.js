const Web3 = require('web3');
const BigNumber = require('bignumber.js');
const web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545")) // Hardcoded development port

const gasTestABI = [{"constant":true,"inputs":[],"name":"temp","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"loops","type":"uint256"}],"name":"doWork","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"}];
const gasTestAddress = "0x98914d531caa2765c478ec52cd6c16185e9ead4d";//Address on Ropsten

async function doTest() {
  const gasTestContract = new web3.eth.Contract(gasTestABI, gasTestAddress);
  try {
    await gasTestContract.methods.doWork(10000).send({gas: 4500000, from: "0x9a9d8ff9854a2722a76a99de6c1bb71d93898ef5"});
  } catch (error) {
    console.log("Send failed: " + error);
  }
  let data = gasTestContract.methods.doWork(10000).encodeABI();
  let options = {
      gas: web3.utils.toHex(100000000),
      to: gasTestAddress,
      data: data,
      from: "0x9a9d8ff9854a2722a76a99de6c1bb71d93898ef5"
  };
  console.log(await web3.eth.call(options));
}

doTest();
