# CappedSTO
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/STO/CappedSTO.sol)


**Execution cost**: less than 102509 gas

**Deployment cost**: less than 1264400 gas

**Combined cost**: less than 1366909 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### Pause(uint256)


**Execution cost**: No bound available


Params:

1. **_timestammp** *of type `uint256`*

--- 
### TokenPurchase(address,address,uint256,uint256)


**Execution cost**: No bound available


Params:

1. **purchaser** *of type `address`*
2. **beneficiary** *of type `address`*
3. **value** *of type `uint256`*
4. **amount** *of type `uint256`*

--- 
### Unpause(uint256)


**Execution cost**: No bound available


Params:

1. **_timestamp** *of type `uint256`*

## Fallback


**Execution cost**: No bound available

**Attributes**: payable



## Methods
### polyToken()


**Execution cost**: less than 845 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getSTODetails()
>
>Return the STO details 


**Execution cost**: less than 2112 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*
2. **output_1** *of type `uint256`*
3. **output_2** *of type `uint256`*
4. **output_3** *of type `uint256`*
5. **output_4** *of type `uint256`*
6. **output_5** *of type `uint256`*
7. **output_6** *of type `uint256`*
8. **output_7** *of type `bool`*

--- 
### buyTokens(address)
>
> low level token purchase ***DO NOT OVERRIDE***


**Execution cost**: No bound available

**Attributes**: payable


Params:

1. **_beneficiary** *of type `address`*

    > Address performing the token purchase



--- 
### endTime()


**Execution cost**: less than 450 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### cap()


**Execution cost**: less than 472 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getRaisedEther()
>
>Return ETH raised by the STO 


**Execution cost**: less than 780 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getNumberInvestors()
>
>Return the total no. of investors 


**Execution cost**: less than 516 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### capReached()
>
> Checks whether the cap has been reached.


**Execution cost**: less than 753 gas

**Attributes**: constant



Returns:

> bool Whether the cap was reached

1. **output_0** *of type `bool`*

--- 
### FEE_ADMIN()


**Execution cost**: less than 934 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### fundraiseType()


**Execution cost**: less than 968 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### buyTokensWithPoly(uint256)
>
> low level token purchase


**Execution cost**: No bound available


Params:

1. **_investedPOLY** *of type `uint256`*

    > Amount of POLY invested



--- 
### factory()


**Execution cost**: less than 1021 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### fundsRaised()


**Execution cost**: less than 648 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getPermissions()
>
>Return the permissions flag that are associated with STO


**Execution cost**: less than 811 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### getInitFunction()
>
>This function returns the signature of configure function 


**Execution cost**: less than 318 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### getRaisedPOLY()
>
>Return POLY raised by the STO


**Execution cost**: less than 1077 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### configure(uint256,uint256,uint256,uint256,uint8,address)
>
> Function used to intialize the contract variables


**Execution cost**: less than 142366 gas


Params:

1. **_startTime** *of type `uint256`*

    > Unix timestamp at which offering get started

2. **_endTime** *of type `uint256`*

    > Unix timestamp at which offering get ended

3. **_cap** *of type `uint256`*

    > Maximum No. of tokens for sale 

4. **_rate** *of type `uint256`*

    > Token units a buyer gets per wei / base unit of POLY

5. **_fundRaiseType** *of type `uint8`*

    > Type of currency used to collect the funds

6. **_fundsReceiver** *of type `address`*

    > Ethereum account address to hold the funds



--- 
### paused()


**Execution cost**: less than 690 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### pause()
>
> pause (overridden function)


**Execution cost**: No bound available




--- 
### investorCount()


**Execution cost**: less than 956 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### investors(address)


**Execution cost**: less than 817 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### rate()


**Execution cost**: less than 428 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### securityToken()


**Execution cost**: less than 977 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### startTime()


**Execution cost**: less than 714 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### takeFee(uint256)
>
> used to withdraw the fee by the factory owner


**Execution cost**: No bound available


Params:

1. **_amount** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### tokensSold()


**Execution cost**: less than 560 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### unpause(uint256)
>
> unpause (overridden function)


**Execution cost**: No bound available


Params:

1. **_newEndDate** *of type `uint256`*


--- 
### verifyInvestment(address,uint256)
>
> use to verify the investment, whether the investor provide the allowance to the STO or not.


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_beneficiary** *of type `address`*

    > Ethereum address of the beneficiary, who wants to buy the st-20

2. **_fundsAmount** *of type `uint256`*

    > Amount invested by the beneficiary


Returns:


1. **output_0** *of type `bool`*

--- 
### wallet()


**Execution cost**: less than 735 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

[Back to the top ↑](#cappedsto)
