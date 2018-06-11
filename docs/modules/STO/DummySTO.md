# DummySTO
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/STO/DummySTO.sol)


**Execution cost**: less than 102110 gas

**Deployment cost**: less than 882600 gas

**Combined cost**: less than 984710 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### LogGenerateTokens(address,uint256)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*
2. **_amount** *of type `uint256`*

--- 
### Pause(uint256)


**Execution cost**: No bound available


Params:

1. **_timestammp** *of type `uint256`*

--- 
### Unpause(uint256)


**Execution cost**: No bound available


Params:

1. **_timestamp** *of type `uint256`*


## Methods
### pause()
>
> pause (overridden function)


**Execution cost**: No bound available




--- 
### getInitFunction()
>
>This function returns the signature of configure function 


**Execution cost**: less than 296 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### endTime()


**Execution cost**: less than 428 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### cap()


**Execution cost**: less than 450 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### FEE_ADMIN()


**Execution cost**: less than 824 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### fundraiseType()


**Execution cost**: less than 858 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### factory()


**Execution cost**: less than 933 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### configure(uint256,uint256,uint256,string)
>
> Function used to intialize the differnet variables


**Execution cost**: No bound available


Params:

1. **_startTime** *of type `uint256`*

    > Unix timestamp at which offering get started

2. **_endTime** *of type `uint256`*

    > Unix timestamp at which offering get ended

3. **_cap** *of type `uint256`*

    > Maximum No. of tokens for sale 

4. **_someString** *of type `string`*

    > Any string that contails the details



--- 
### ADMIN()


**Execution cost**: less than 206 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### generateTokens(address,uint256)
>
> Function used to generate the tokens 


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*

    > Address of the investor

2. **_amount** *of type `uint256`*

    > Amount of ETH or Poly invested by the investor



--- 
### getPermissions()
>
>Return the permissions flag that are associated with STO


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### startTime()


**Execution cost**: less than 604 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### investors(address)


**Execution cost**: less than 707 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### someString()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### getRaisedPOLY()
>
>Return POLY raised by the STO


**Execution cost**: less than 492 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### investorCount()


**Execution cost**: less than 846 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### securityToken()


**Execution cost**: less than 889 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### polyToken()


**Execution cost**: less than 735 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### paused()


**Execution cost**: less than 539 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### getNumberInvestors()
>
>Return the total no. of investors 


**Execution cost**: less than 494 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getRaisedEther()
>
>Return ETH raised by the STO 


**Execution cost**: less than 272 gas

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

[Back to the top ↑](#dummysto)
