const PolyOracle = artifacts.require('./PolyOracle.sol');
import latestTime from './helpers/latestTime';
import { duration, ensureException, assertEvent, wait } from './helpers/utils';
import {increaseTime} from './helpers/time';

const Web3 = require('web3');
const BigNumber = require('bignumber.js');
const web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545")) // Hardcoded development port

contract('PolyOracle', accounts=> {

let I_PolyOracle;
let owner;
const URL = "json(https://api.coinmarketcap.com/v2/ticker/2496/?convert=USD).data.quotes.USD.price";
const SanityBounds = 20*10**16;
const GasLimit = 100000;
const TimeTolerance = 5*60;
const message = "Txn should fail";

    before(async()=> {
        owner = accounts[0];
        I_PolyOracle = await PolyOracle.new({from : owner});
    });


    describe("state variables checks", async() => {
        
        it("should check the api url", async() => {
            let url = await I_PolyOracle.oracleURL.call();
            assert.equal(URL, url);
        });

        it("should check the sanity bounds", async() => {
            let sanityBounds = await I_PolyOracle.sanityBounds.call();
            assert.equal(SanityBounds, sanityBounds);
        });

        it("should check the gas limits", async() => {
            let gasLimit = await I_PolyOracle.gasLimit.call();
            assert.equal(GasLimit, gasLimit);
        });

        it("should check the oraclize time tolerance", async() => {
            let timeTolerance = await I_PolyOracle.oraclizeTimeTolerance.call();
            assert.equal(TimeTolerance, timeTolerance);
        });

    })

    describe("Scheduling test cases", async() => {

        it("Should schedule the timing of the call", async() => {
            let errorThrown = false;
            let timeScheduling = [latestTime()+duration.minutes(1), latestTime()+duration.minutes(2), latestTime()+duration.minutes(3)]
            try {
                await I_PolyOracle.schedulePriceUpdatesFixed(timeScheduling, {from: accounts[1], value: web3.utils.toWei("2")});
            } catch(error) {
                errorThrown = true;
                ensureException(error);
                console.log(`       tx -> revert msg.sender should be the owner of the contract`.grey);
            }
            assert.ok(message, errorThrown);
        });

        it("Should schedule the timing of the call", async() => {
            let errorThrown = false;
            let timeScheduling = [latestTime()+duration.minutes(1), latestTime()+duration.minutes(2), latestTime()+duration.minutes(3)]
            try {
                await I_PolyOracle.schedulePriceUpdatesFixed(timeScheduling, {from: owner});
            } catch(error) {
                errorThrown = true;
                ensureException(error);
                console.log(`       tx -> revert Because value for txn is not provided`.grey);
            }
            assert.ok(message, errorThrown);
        })

        it("Should schedule the timing of the call", async() => {
            await I_PolyOracle.schedulePriceUpdatesFixed([],{from: owner, value:web3.utils.toWei("1")});

            let log = await assertEvent(I_PolyOracle, {event: 'LogNewOraclizeQuery',logIndex: 1});

            assert.isAtMost(log[0].args._time, latestTime());
            await increaseTime(50);

            const LogPriceUpdated = await I_PolyOracle.allEvents();
            const priceLog = await new Promise(function(resolve, reject) {
            LogPriceUpdated.watch(function(error, log){ resolve(log);});
            });
            assert.equal(priceLog.args._oldPrice.toNumber(), 0);
            console.log(`       latest price: ${parseFloat(priceLog.args._price.dividedBy(new BigNumber(10).pow(18)).toNumber())}`);
        });

        it("Should schedule the timing of the call", async() => {
            let blockNo = await web3.eth.getBlock('latest').number;
            let timeScheduling = [latestTime()+duration.minutes(1), latestTime()+duration.minutes(2), latestTime()+duration.minutes(3)]
            await I_PolyOracle.schedulePriceUpdatesFixed(timeScheduling, {from: owner, value:web3.utils.toWei("1")});
            
            let event_data = await assertEvent(I_PolyOracle, {event: 'LogNewOraclizeQuery'});

            for (var i = 0; i < event_data.length; i++) {
                let time = event_data[i].args._time;
                console.log(`       checking the time for the ${i} index and the scheduling time is ${time}`);
                assert.isAtMost(time, timeScheduling[i]);
            }
        });

        // it("Should return the callback call", async(done) => {
            
        //     await latestTime(30);
        //     wait(300000);
        //     let log = await assertEvent(I_PolyOracle, {event: 'LogPriceUpdated'});
        //     console.log(log);
            
            // const LogPriceUpdated = await I_PolyOracle.allEvents();
            // let log = await new Promise(function(resolve, reject) {
            // LogPriceUpdated.watch(function(error, log){
            //     console.log(log);
            //     console.log(`       latest price: ${parseFloat(log.args._price.dividedBy(new BigNumber(10).pow(18)).toNumber())}`);
            //     resolve(log)});
            // });
            // LogPriceUpdated.stopWatching();
            // await latestTime(60);

            // const LogPriceUpdated2 = await I_PolyOracle.allEvents();
            // log = await new Promise(function(resolve, reject) {
            // LogPriceUpdated2.watch(function(error, log){resolve(log)});
            // });
            // LogPriceUpdated2.stopWatching();
            
            // console.log(`       latest price: ${parseFloat(log.args._price.dividedBy(new BigNumber(10).pow(18)).toNumber())}`);

            // await latestTime(60);

            // const LogPriceUpdated3 = await I_PolyOracle.allEvents();
            // log = await new Promise(function(resolve, reject) {
            // LogPriceUpdated3.watch(function(error, log){resolve(log)});
            // });
            // LogPriceUpdated3.stopWatching();
            
            // console.log(`       latest price: ${parseFloat(log.args._price.dividedBy(new BigNumber(10).pow(18)).toNumber())}`);
            // done();
        //     setTimeout(done, 300000);
        // }).timeout(500000);

           
    })

    describe("Ownable functions", async() => {

        it("Should change the Poly USD price manually", async() => {
            let errorThrown = false;
            try {
                await I_PolyOracle.setPOLYUSD(web3.utils.toWei("0.4","ether"), {from: accounts[5]});
            } catch(error) {
                errorThrown = true;
                console.log(`       tx->revert msg.sender is not the owner`.grey);
            }
            assert.ok(message, errorThrown);
        });

        it("Should change the Poly USD price manually", async() => {
            let price1 = await I_PolyOracle.getPrice.call();
            await I_PolyOracle.setPOLYUSD(web3.utils.toWei("0.4","ether"), {from: owner});
            let price2 = await I_PolyOracle.getPrice.call();
            assert.equal(price2[0], web3.utils.toWei("0.4","ether"))
        })

        it("Should change the URL manually", async() => {
            let errorThrown = false;
            try {
                await I_PolyOracle.setFreezeOracle(true, {from: accounts[5]});
            } catch(error) {
                errorThrown = true;
                console.log(`       tx->revert msg.sender is not the owner`.grey);
            }
            assert.ok(message, errorThrown);
        })

        it("Should change the URL manually", async() => {
            let freeze_ = await I_PolyOracle.freezeOracle.call();
            await I_PolyOracle.setFreezeOracle(true, {from: owner});
            let freeze = await I_PolyOracle.freezeOracle.call();
            assert.isFalse(freeze_);
            assert.isTrue(freeze);
        })

        it("Should change the sanity bounds manually", async() => {
            let errorThrown = false;
            try {
                await I_PolyOracle.sanityBounds(new BigNumber(25).times(new BigNumber(10).pow(16)), {from : accounts[6]});
            } catch(error) {
                errorThrown = true;
                console.log(`       tx->revert msg.sender is not the owner`.grey);
            }
            assert.ok(message, errorThrown);
        })

        it("Should change the sanity bounds manually", async() => {
            await I_PolyOracle.sanityBounds(new BigNumber(25).times(new BigNumber(10).pow(16)), {from : owner});
            let sanityBounds = await I_PolyOracle.sanityBounds.call();
            assert.equal(sanityBounds.toNumber(), new BigNumber(25).times(new BigNumber(10).pow(16)).toNumber())
        });

        it("Should change the gas price manually", async() => {
            let errorThrown = false;
        })

        it("Should change the gas price manually", async() => {
            let errorThrown = false;
        })

        it("Should change the gas price manually", async() => {
            
        })

        it("Should change the gas limit manually", async() => {
            let errorThrown = false;
        })

        it("Should change the gas limit manually", async() => {
            
        })

        it("Should schedule the callback call but failed because now gas priced hike", async() => {

        })

        it("Should schedule the callback call according to the gas price", async() => {

        })

        it("Should blacklist some IDS manually", async() => {
            let errorThrown = false;
        })

        it("Should blacklist some IDS manually", async() => {

        })

        it("Should change the oraclize time tolerance manually", async() => {
            let errorThrown = false;
        })

        it("Should change the oraclize time tolerance manually", async() => {

        })


    })

})