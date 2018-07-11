pragma solidity ^0.4.24;

import "./ISTO.sol";
import "../../interfaces/IST20.sol";
import "../../interfaces/IOracle.sol";
import "../../interfaces/ISecurityTokenRegistry.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

/**
 * @title STO module for standard capped crowdsale
 */
contract USDTieredSTO is ISTO {
    using SafeMath for uint256;

    // Address where ETH & POLY funds are delivered
    address public wallet;

    // Address of issuer reserve wallet for unsold tokens
    address public reserveWallet;

    // Address of Polymath Security Token Registry
    address public securityTokenRegistry;

    // How many token units a buyer gets per USD per tier (multiplied by 10**18)
    uint256[] public ratePerTier;

    // How many tokens are available in each tier (relative to totalSupply)
    uint256[] public tokensPerTier;

    // How many tokens have been minted in each tier (relative to totalSupply)
    uint256[] public mintedPerTier;

    // Current tier
    uint8 public currentTier;

    // Amount of USD funds raised
    uint256 public fundsRaisedUSD;

    // Amount of ETH funds raised
    uint256 public fundsRaisedETH;

    // Amount of POLY funds raised
    uint256 public fundsRaisedPOLY;

    // Number of individual investors
    uint256 public investorCount;

    // Amount in USD invested by each address
    mapping (address => uint256) public investorInvestedUSD;

    // Amount in ETH invested by each address
    mapping (address => uint256) public investorInvestedETH;

    // Amount in POLY invested by each address
    mapping (address => uint256) public investorInvestedPOLY;

    // List of accredited investors
    mapping (address => bool) public accredited;

    // Limit in USD for non-accredited investors multiplied by 10**18
    uint256 public nonAccreditedLimitUSD;

    // Minimum investable amount in USD
    uint256 public minimumInvestmentUSD;

    // Whether or not the STO has been finalized
    bool public isFinalized;

    event TokenPurchase(address indexed _purchaser, address indexed _beneficiary, uint256 _tokens, uint256 _usdAmount, uint8 _tier);
    event FundsReceived(address indexed _purchaser, address indexed _beneficiary, uint256 _usdAmount, uint256 _etherAmount, uint256 _polyAmount, uint256 _rate);
    event ReserveTokenMint(address indexed _owner, address indexed _wallet, uint256 _tokens, uint8 _tier);
    event ConfigChanged(
        uint256 _startTime,
        uint256 _endTime,
        uint256[] _ratePerTier,
        uint256[] _tokensPerTier,
        address indexed _securityTokenRegistry,
        uint256 _nonAccreditedLimitUSD,
        uint256 _minimumInvestmentUSD,
        uint8 _startingTier,
        uint8[] _fundRaiseTypes,
        address indexed _wallet,
        address indexed _reserveWallet
    );

    modifier validETH {
        require(ISecurityTokenRegistry(securityTokenRegistry).getOracle(bytes32("ETH"), bytes32("USD")) != address(0), "Invalid ETHUSD Oracle");
        require(fundRaiseType[uint8(FundRaiseType.ETH)]);
        _;
    }

    modifier validPOLY {
        require(ISecurityTokenRegistry(securityTokenRegistry).getOracle(bytes32("POLY"), bytes32("USD")) != address(0), "Invalid ETHUSD Oracle");
        require(fundRaiseType[uint8(FundRaiseType.POLY)]);
        _;
    }

    constructor (address _securityToken, address _polyAddress) public
    IModule(_securityToken, _polyAddress)
    {
    }

    //////////////////////////////////

    /////////////////
    // onlyFactory //
    /////////////////

    /**
     * @notice Function used to intialize the contract variables
     * @param _startTime Unix timestamp at which offering get started
     * @param _endTime Unix timestamp at which offering get ended
     * @param _ratePerTier Rate (in USD) per tier (* 10**18)
     * @param _tokensPerTier Tokens available in each tier
     * @param _securityTokenRegistry Address of Security Token Registry used to reference oracles
     * @param _nonAccreditedLimitUSD Limit in USD (* 10**18) for non-accredited investors
     * @param _startingTier Starting tier for the STO
     * @param _fundRaiseTypes Types of currency used to collect the funds
     * @param _wallet Ethereum account address to hold the funds
     * @param _reserveWallet Ethereum account address to receive unsold tokens
     */
    function configure(
        uint256 _startTime,
        uint256 _endTime,
        uint256[] _ratePerTier,
        uint256[] _tokensPerTier,
        address _securityTokenRegistry,
        uint256 _nonAccreditedLimitUSD,
        uint256 _minimumInvestmentUSD,
        uint8 _startingTier,
        uint8[] _fundRaiseTypes,
        address _wallet,
        address _reserveWallet
    ) public onlyFactory {
        _configure(
            _startTime,
            _endTime,
            _ratePerTier,
            _tokensPerTier,
            _securityTokenRegistry,
            _nonAccreditedLimitUSD,
            _minimumInvestmentUSD,
            _startingTier,
            _fundRaiseTypes,
            _wallet,
            _reserveWallet
        );
    }

    ///////////////
    // onlyOwner //
    ///////////////

    /**
     * @notice Function used to change the contract variables before STO start
     * @param _startTime Unix timestamp at which offering get started
     * @param _endTime Unix timestamp at which offering get ended
     * @param _ratePerTier Rate (in USD) per tier (* 10**18)
     * @param _tokensPerTier Tokens available in each tier
     * @param _securityTokenRegistry Address of Security Token Registry used to reference oracles
     * @param _nonAccreditedLimitUSD Limit in USD (* 10**18) for non-accredited investors
     * @param _startingTier Starting tier for the STO
     * @param _fundRaiseTypes Types of currency used to collect the funds
     * @param _wallet Ethereum account address to hold the funds
     * @param _reserveWallet Ethereum account address to receive unsold tokens
     */
    function changeConfig(
        uint256 _startTime,
        uint256 _endTime,
        uint256[] _ratePerTier,
        uint256[] _tokensPerTier,
        address _securityTokenRegistry,
        uint256 _nonAccreditedLimitUSD,
        uint256 _minimumInvestmentUSD,
        uint8 _startingTier,
        uint8[] _fundRaiseTypes,
        address _wallet,
        address _reserveWallet
    ) public onlyOwner {
        require(now < startTime);
        _configure(
            _startTime,
            _endTime,
            _ratePerTier,
            _tokensPerTier,
            _securityTokenRegistry,
            _nonAccreditedLimitUSD,
            _minimumInvestmentUSD,
            _startingTier,
            _fundRaiseTypes,
            _wallet,
            _reserveWallet
        );
        emit ConfigChanged(_startTime, _endTime, _ratePerTier, _tokensPerTier, _securityTokenRegistry, _nonAccreditedLimitUSD, _minimumInvestmentUSD, _startingTier, _fundRaiseTypes, _wallet, _reserveWallet);
    }

    //TODO - check whether this can only be called when STO has completed
    function finalize() public onlyOwner {
        require(!isFinalized);
        isFinalized = true;
        for (uint8 i = 0; i < tokensPerTier.length; i++) {
            if (mintedPerTier[i] < tokensPerTier[i]) {
                uint256 remainingTokens = tokensPerTier[i].sub(mintedPerTier[i]);
                mintedPerTier[i] = tokensPerTier[i];
                require(IST20(securityToken).mint(reserveWallet, remainingTokens), "Error in minting the tokens");
                emit ReserveTokenMint(msg.sender, reserveWallet, remainingTokens, i);
            }
        }
    }

    /**
     * @notice Modify the list of accredited addresses
     * @param _investors Array of investor addresses to modify
     * @param _accredited Array of bools specifying accreditation status
     */
    function changeAccredited(address[] _investors, bool[] _accredited) public onlyOwner {
        require(_investors.length == _accredited.length);
        for (uint256 i = 0; i < _investors.length; i++) {
            accredited[_investors[i]] = _accredited[i];
        }
    }

    //////////////////////////
    // Investment Functions //
    //////////////////////////

    /**
    * @notice fallback function - assumes ETH being invested
    */
    function () external payable {
        buyWithETH(msg.sender);
    }

    /**
      * @notice low level token purchase ***DO NOT OVERRIDE***
      * @param _beneficiary Address performing the token purchase
      */
    function buyWithETH(address _beneficiary) public payable validETH {
        require(!paused);
        require(isOpen());
        uint256 ETHUSD = IOracle(ISecurityTokenRegistry(securityTokenRegistry).getOracle(bytes32("ETH"), bytes32("USD"))).getPrice();
        uint256 investedETH = msg.value;
        uint256 investedUSD = wmul(ETHUSD, investedETH);
        require(investedUSD >= minimumInvestmentUSD);
        //Refund any excess for non-accredited investors
        if ((!accredited[_beneficiary]) && (investedUSD.add(investorInvestedUSD[_beneficiary]) > nonAccreditedLimitUSD)) {
            uint256 refundUSD = investedUSD.add(investorInvestedUSD[_beneficiary]).sub(nonAccreditedLimitUSD);
            uint256 refundETH = wdiv(refundUSD, ETHUSD);
            msg.sender.transfer(refundETH);
            investedETH = investedETH.sub(refundETH);
            investedUSD = wmul(ETHUSD, investedETH);//investedUSD.sub(refundUSD);
        }
        /* uint256 currentSupply = ISecurityToken(securityToken).totalSupply(); */
        uint256 spentUSD;
        /* uint256 purchasedTokens; */
        for (uint8 i = currentTier; i < ratePerTier.length; i++) {
            if (currentTier != i) {
                currentTier = i;
            }
            if (mintedPerTier[i] < tokensPerTier[i]) {
                spentUSD = spentUSD.add(_purchaseTier(_beneficiary, i, investedUSD.sub(spentUSD)));
                /* investedUSD = investedUSD.sub(spentUSD)); */
                if (investedUSD == spentUSD) {
                    break;
                }
            }
        }
        uint256 spentETH = wdiv(wmul(investedETH, spentUSD), investedUSD);
        /* spentETH = spendUSD.wdiv(ETHUSD); */
        if (spentUSD > 0) {
            if (investorInvestedUSD[_beneficiary] == 0) {
                investorCount = investorCount + 1;
            }
        }
        investorInvestedUSD[_beneficiary] = investorInvestedUSD[_beneficiary].add(spentUSD);
        investorInvestedETH[_beneficiary] = investorInvestedETH[_beneficiary].add(spentETH);
        fundsRaisedETH = fundsRaisedETH.add(spentETH);
        fundsRaisedUSD = fundsRaisedUSD.add(spentUSD);
        wallet.transfer(spentETH);
        _beneficiary.transfer(investedETH.sub(spentETH));
        emit FundsReceived(msg.sender, _beneficiary, spentUSD, spentETH, 0, ETHUSD);
    }

    /**
      * @notice low level token purchase
      * @param _investedPOLY Amount of POLY invested
      */
    function buyWithPOLY(address _beneficiary, uint256 _investedPOLY) public validPOLY {
        require(!paused);
        require(isOpen());
        uint256 POLYUSD = IOracle(ISecurityTokenRegistry(securityTokenRegistry).getOracle(bytes32("POLY"), bytes32("USD"))).getPrice();
        /* uint256 investedPOLY = msg.value; */
        uint256 investedUSD = wmul(POLYUSD, _investedPOLY);
        require(investedUSD >= minimumInvestmentUSD);
        //Refund any excess for non-accredited investors
        if ((!accredited[_beneficiary]) && (investedUSD.add(investorInvestedUSD[_beneficiary]) > nonAccreditedLimitUSD)) {
            uint256 refundUSD = investedUSD.add(investorInvestedUSD[_beneficiary]).sub(nonAccreditedLimitUSD);
            uint256 refundPOLY = wdiv(refundUSD, POLYUSD);
            _investedPOLY = _investedPOLY.sub(refundPOLY);
            investedUSD = wmul(POLYUSD, _investedPOLY);//investedUSD.sub(refundUSD);
        }
        require(verifyInvestment(msg.sender, _investedPOLY));
        /* uint256 currentSupply = ISecurityToken(securityToken).totalSupply(); */
        uint256 spentUSD;
        /* uint256 purchasedTokens; */
        for (uint8 i = currentTier; i < ratePerTier.length; i++) {
            if (currentTier != i) {
                currentTier = i;
            }
            if (mintedPerTier[i] < tokensPerTier[i]) {
                spentUSD = spentUSD.add(_purchaseTier(_beneficiary, i, investedUSD.sub(spentUSD)));
                /* investedUSD = investedUSD.sub(spentUSD)); */
                if (investedUSD == spentUSD) {
                    break;
                }
            }
        }
        if (spentUSD > 0) {
            if (investorInvestedUSD[_beneficiary] == 0) {
                investorCount = investorCount + 1;
            }
        }
        uint256 spentPOLY = wdiv(wmul(_investedPOLY, spentUSD), investedUSD);
        /* spentPOLY = spendUSD.wdiv(POLYUSD); */
        investorInvestedUSD[_beneficiary] = investorInvestedUSD[_beneficiary].add(spentUSD);
        investorInvestedPOLY[_beneficiary] = investorInvestedPOLY[_beneficiary].add(spentPOLY);
        fundsRaisedPOLY = fundsRaisedPOLY.add(spentPOLY);
        fundsRaisedUSD = fundsRaisedUSD.add(spentUSD);
        _transferPOLY(msg.sender, spentPOLY);
        emit FundsReceived(msg.sender, _beneficiary, spentUSD, 0, spentPOLY, POLYUSD);
    }

    function buyWithETHAtTier(uint256 _tier, address _beneficiary) public payable validETH {
        require(!paused);
        require(isOpen());
        require(_tier == currentTier);
        uint256 ETHUSD = IOracle(ISecurityTokenRegistry(securityTokenRegistry).getOracle(bytes32("ETH"), bytes32("USD"))).getPrice();

        uint256 investedETH = msg.value;
        uint256 investedUSD = convertCurrency(bytes32("ETH"), bytes32("USD"), investedETH);
        uint256 requestedTOKEN = convertCurrency(bytes32("ETH"), bytes32("TOKEN"), investedETH);
        require(investedUSD >= minimumInvestmentUSD);

        // Refund excess above tier cap
        uint256 remainingTierTOKEN = tokensPerTier[currentTier].sub(mintedPerTier[currentTier]);
        require(remainingTierTOKEN > 0);
        if (requestedTOKEN > remainingTierTOKEN) {
            uint256 refundTOKEN = requestedTOKEN.sub(remainingTierTOKEN);
            uint256 refundETHOverTier = convertCurrency(bytes32("TOKEN"), bytes32("ETH"), refundTOKEN);
            msg.sender.transfer(refundETHOverTier);
            requestedTOKEN = remainingTierTOKEN;
            investedETH = convertCurrency(bytes32("TOKEN"), bytes32("ETH"), requestedTOKEN);
            investedUSD = convertCurrency(bytes32("TOKEN"), bytes32("USD"), requestedTOKEN);
        }

        // Refund excess above non-accredited investor cap
        if ((!accredited[_beneficiary]) && (investedUSD.add(investorInvestedUSD[_beneficiary]) > nonAccreditedLimitUSD)) {
            uint256 refundUSD = investedUSD.add(investorInvestedUSD[_beneficiary]).sub(nonAccreditedLimitUSD);
            uint256 refundETHOverAccredited = convertCurrency(bytes32("USD"), bytes32("ETH"), refundUSD);
            msg.sender.transfer(refundETHOverAccredited);
            investedUSD = investedUSD.sub(refundUSD);
            investedETH = convertCurrency(bytes32("USD"), bytes32("ETH"), investedUSD);
            requestedTOKEN = convertCurrency(bytes32("USD"), bytes32("TOKEN"), investedUSD);
        }

        // Complete token purchase
        if (requestedTOKEN > 0) {
            if (investorInvestedUSD[_beneficiary] == 0) {
                investorCount = investorCount.add(1);
            }
            investorInvestedUSD[_beneficiary] = investorInvestedUSD[_beneficiary].add(investedUSD);
            investorInvestedETH[_beneficiary] = investorInvestedETH[_beneficiary].add(investedETH);
            fundsRaisedUSD = fundsRaisedUSD.add(investedUSD);
            fundsRaisedETH = fundsRaisedETH.add(investedETH);
            mintedPerTier[_tier] = mintedPerTier[_tier].add(requestedTOKEN);

            require(IST20(securityToken).mint(_beneficiary, requestedTOKEN), "Error in minting the tokens");
            wallet.transfer(investedETH);
            emit TokenPurchase(msg.sender, _beneficiary, requestedTOKEN, investedUSD, currentTier);
            emit FundsReceived(msg.sender, _beneficiary, investedUSD, investedETH, 0, ETHUSD);
        }
    }

    function buyWithPOLYAtTier(uint256 _tier, address _beneficiary, uint256 _investedPOLY) public validPOLY {
        require(!paused);
        require(isOpen());
        require(_tier == currentTier);

        uint256 POLYUSD = IOracle(ISecurityTokenRegistry(securityTokenRegistry).getOracle(bytes32("POLY"), bytes32("USD"))).getPrice();

        uint256 investedPOLY = _investedPOLY;
        uint256 investedUSD = convertCurrency(bytes32("POLY"), bytes32("USD"), investedPOLY);
        uint256 requestedTOKEN = convertCurrency(bytes32("POLY"), bytes32("TOKEN"), investedPOLY);
        require(investedUSD >= minimumInvestmentUSD);

        // Refund excess above tier cap
        uint256 remainingTierTOKEN = tokensPerTier[currentTier].sub(mintedPerTier[currentTier]);
        require(remainingTierTOKEN > 0);
        if (requestedTOKEN > remainingTierTOKEN) {
            requestedTOKEN = remainingTierTOKEN;
            investedPOLY = convertCurrency(bytes32("TOKEN"), bytes32("POLY"), requestedTOKEN);
            investedUSD = convertCurrency(bytes32("TOKEN"), bytes32("USD"), requestedTOKEN);
        }

        // Refund excess above non-accredited investor cap
        if ((!accredited[_beneficiary]) && (investedUSD.add(investorInvestedUSD[_beneficiary]) > nonAccreditedLimitUSD)) {
            investedUSD = nonAccreditedLimitUSD.sub(investorInvestedUSD[_beneficiary]);
            investedPOLY = convertCurrency(bytes32("USD"), bytes32("TOKEN"), investedUSD);
            requestedTOKEN = convertCurrency(bytes32("USD"), bytes32("TOKEN"), investedUSD);
        }

        // Complete token purchase
        if (requestedTOKEN > 0) {
            if (investorInvestedUSD[_beneficiary] == 0) {
                investorCount = investorCount.add(1);
            }
            investorInvestedUSD[_beneficiary] = investorInvestedUSD[_beneficiary].add(investedUSD);
            investorInvestedPOLY[_beneficiary] = investorInvestedPOLY[_beneficiary].add(investedPOLY);
            fundsRaisedUSD = fundsRaisedUSD.add(investedUSD);
            fundsRaisedPOLY = fundsRaisedPOLY.add(investedPOLY);
            mintedPerTier[_tier] = mintedPerTier[_tier].add(requestedTOKEN);

            require(polyToken.transferFrom(msg.sender, wallet, investedPOLY));
            require(IST20(securityToken).mint(_beneficiary, requestedTOKEN), "Error in minting the tokens");
            emit TokenPurchase(msg.sender, _beneficiary, requestedTOKEN, investedUSD, currentTier);
            emit FundsReceived(msg.sender, _beneficiary, investedUSD, 0, investedPOLY, POLYUSD);
        }
    }

    //////////////
    // Internal //
    //////////////

    function _transferPOLY(address _beneficiary, uint256 _polyAmount) internal {
        require(polyToken.transferFrom(_beneficiary, wallet, _polyAmount));
    }

    function _purchaseTier(address _beneficiary, uint8 _tier, uint256 _investedUSD) internal returns(uint256) {
        uint256 maximumTokens = wdiv(_investedUSD, ratePerTier[_tier]);
        uint256 remainingTokens = tokensPerTier[_tier].sub(mintedPerTier[_tier]);
        uint256 spentUSD;
        if (maximumTokens > remainingTokens) {
            spentUSD = wmul(remainingTokens, ratePerTier[_tier]);
            mintedPerTier[_tier] = tokensPerTier[_tier];
            require(IST20(securityToken).mint(_beneficiary, remainingTokens), "Error in minting the tokens");
            emit TokenPurchase(msg.sender, _beneficiary, remainingTokens, spentUSD, _tier);
        } else {
            spentUSD = _investedUSD;
            mintedPerTier[_tier] = mintedPerTier[_tier].add(maximumTokens);
            require(IST20(securityToken).mint(_beneficiary, maximumTokens), "Error in minting the tokens");
            emit TokenPurchase(msg.sender, _beneficiary, maximumTokens, spentUSD, _tier);
        }
        return spentUSD;
    }

    /**
     * @notice Internal function for modifying STO settings
     */
    function _configure(
        uint256 _startTime,
        uint256 _endTime,
        uint256[] _ratePerTier,
        uint256[] _tokensPerTier,
        address _securityTokenRegistry,
        uint256 _nonAccreditedLimitUSD,
        uint256 _minimumInvestmentUSD,
        uint8 _startingTier,
        uint8[] _fundRaiseTypes,
        address _wallet,
        address _reserveWallet
    ) private {
        require(_ratePerTier.length > 0);
        require(_ratePerTier.length == _tokensPerTier.length, "Mismatch between rates and tokens per tier");
        for (uint8 i = 0; i < _ratePerTier.length; i++) {
            require(_ratePerTier[i] > 0, "Rate of token should be greater than 0");
            mintedPerTier.push(0);
        }
        require(_wallet != address(0), "Zero address is not permitted for wallet");
        require(_reserveWallet != address(0), "Zero address is not permitted for wallet");
        require(_startTime >= now.add(86400) && _endTime > _startTime, "Date parameters are not valid");
        require(_securityTokenRegistry != address(0), "Zero address is not permitted for security token registry");
        require(_startingTier < _ratePerTier.length, "Invalid starting tier");
        require(_fundRaiseTypes.length > 0, "No fund raising currencies specified");
        currentTier = _startingTier;
        startTime = _startTime;
        endTime = _endTime;
        ratePerTier = _ratePerTier;
        tokensPerTier = _tokensPerTier;
        minimumInvestmentUSD = _minimumInvestmentUSD;
        wallet = _wallet;
        reserveWallet = _reserveWallet;
        securityTokenRegistry = _securityTokenRegistry;
        nonAccreditedLimitUSD = _nonAccreditedLimitUSD;
        for (uint8 j = 0; j < _fundRaiseTypes.length; j++) {
            require(_fundRaiseTypes[j] < 2);
            fundRaiseType[_fundRaiseTypes[j]] = true;
        }
    }

    /////////////
    // Getters //
    /////////////

    /**
     * @notice This function returns whether or not the STO is in fundraising mode (open)
     * @return bool Whether the STO is accepting investments
     */
    function isOpen() public view returns(bool) {
        if (isFinalized) {
            return false;
        }
        if (now < startTime) {
            return false;
        }
        if (now >= endTime) {
            return false;
        }
        if (mintedPerTier[ratePerTier.length - 1] == tokensPerTier[tokensPerTier.length - 1]) {
            return false;
        }
        return true;
    }

    /**
     * @notice This function converts between currency pairs
     * @param _currencyFrom Currency key
     * @param _currencyTo Currency key
     * @param _amount Value to convert
     * @return uint256 Value converted
     */
    function convertCurrency(bytes32 _currencyFrom, bytes32 _currencyTo, uint256 _amount) public view returns(uint256) {
        uint256 rate = IOracle(ISecurityTokenRegistry(securityTokenRegistry).getOracle(_currencyTo, bytes32("USD"))).getPrice();
        if (_currencyFrom == bytes32("TOKEN")) {
            uint256 tokenToUSD = wmul(_amount, ratePerTier[currentTier]); // TOKEN * USD/TOKEN = USD
            // TOKEN -> USD
            if (_currencyTo == bytes32("USD")) {
                return tokenToUSD;
            }
            // TOKEN -> ETH or POLY
            if (_currencyTo == bytes32("ETH") || _currencyTo == bytes32("POLY")) {
                return wdiv(tokenToUSD, rate); // USD / USD/ETH = ETH
            }
        }
        if (_currencyFrom == bytes32("USD")) {
            // USD -> TOKEN
            if (_currencyTo == bytes32("TOKEN")) {
                return wdiv(_amount, ratePerTier[currentTier]); // USD / USD/TOKEN = TOKEN
            }
            // USD -> ETH or POLY
            if (_currencyTo == bytes32("ETH") || _currencyTo == bytes32("POLY")) {
                return wdiv(_amount, rate); // USD / USD/ETH = ETH
            }
        }
        if (_currencyFrom == bytes32("ETH") || _currencyFrom == bytes32("POLY")) {
            uint256 ethToUSD = wmul(_amount, rate); // ETH * USD/ETH = USD
            // ETH or POLY -> USD
            if (_currencyTo == bytes32("USD")) {
                return ethToUSD;
            }
            // ETH or POLY -> TOKEN
            if (_currencyTo == bytes32("TOKEN")) {
                return wdiv(ethToUSD, ratePerTier[currentTier]); // USD / USD/TOKEN
            }

        }
        return 0;
    }

    /**
     * @notice This function returns the signature of configure function
     * @return bytes4 Configure function signature
     */
    function getInitFunction() public returns (bytes4) {
        return bytes4(keccak256("configure(uint256,uint256,uint256[],uint256[],address,uint256,uint256,uint8,uint8[],address,address)"));
    }

    /**
     * @notice Checks whether the cap has been reached.
     * @return bool Whether the cap was reached
     */
    function capReached() public view returns (bool) {
        return ((currentTier == ratePerTier.length) && (mintedPerTier[currentTier] == tokensPerTier[currentTier]));
    }

    /**
     * @notice Return ETH raised by the STO
     * @return uint256 Amount of ETH raised
     */
    function getRaisedEther() public view returns (uint256) {
        return fundsRaisedETH;
    }

    /**
     * @notice Return POLY raised by the STO
     * @return uint256 Amount of POLY raised
     */
    function getRaisedPOLY() public view returns (uint256) {
        return fundsRaisedPOLY;
    }

    /**
     * @notice Return USD raised by the STO
     * @return uint256 Amount of USD raised
     */
    function getRaisedUSD() public view returns (uint256) {
        return fundsRaisedUSD;
    }

    /**
     * @notice Return the total no. of investors
     * @return uint256 Investor count
     */
    function getNumberInvestors() public view returns (uint256) {
        return investorCount;
    }

    /**
     * @notice Return the total no. of tokens sold
     * @return bool Total number of tokens sold
     */
    function getTokensSold() public view returns (uint256) {
        uint256 tokensSold;
        for (uint8 i = 0; i < currentTier; i++) {
            tokensSold = tokensSold.add(mintedPerTier[i]);
        }
        return tokensSold;
    }

    /**
     * @notice Return the permissions flag that are associated with STO
     */
    function getPermissions() public view returns(bytes32[]) {
        bytes32[] memory allPermissions = new bytes32[](0);
        return allPermissions;
    }

    //Below from DSMath
    //TODO: Attribute or import from DSMath
    uint constant WAD = 10 ** 18;
    uint constant RAY = 10 ** 27;

    function wmul(uint x, uint y) internal pure returns (uint z) {
        z = SafeMath.add(SafeMath.mul(x, y), WAD / 2) / WAD;
    }
    function rmul(uint x, uint y) internal pure returns (uint z) {
        z = SafeMath.add(SafeMath.mul(x, y), RAY / 2) / RAY;
    }
    function wdiv(uint x, uint y) internal pure returns (uint z) {
        z = SafeMath.add(SafeMath.mul(x, WAD), y / 2) / y;
    }
    function rdiv(uint x, uint y) internal pure returns (uint z) {
        z = SafeMath.add(SafeMath.mul(x, RAY), y / 2) / y;
    }

}
