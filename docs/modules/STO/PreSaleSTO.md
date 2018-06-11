# PreSaleSTO
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/STO/PreSaleSTO.sol)


**Execution cost**: less than 102208 gas

**Deployment cost**: less than 978400 gas

**Combined cost**: less than 1080608 gas

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
### TokensAllocated(address,uint256)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*
2. **_amount** *of type `uint256`*

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


**Execution cost**: less than 271 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### endTime()


**Execution cost**: less than 428 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### FEE_ADMIN()


**Execution cost**: less than 868 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### fundraiseType()


**Execution cost**: less than 902 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### allocateTokensMulti(address[],uint256[],uint256,uint256)
>
> Function used to allocate tokens to the multiple investor


**Execution cost**: No bound available


Params:

1. **_investors** *of type `address[]`*

    > Array of address of the investors

2. **_amounts** *of type `uint256[]`*

    > Array of no. of tokens need to transfered to the investors

3. **_etherContributed** *of type `uint256`*

    > Total amount of ETH get contributed

4. **_polyContributed** *of type `uint256`*

    > Total amount of POLY get contributed



--- 
### PRE_SALE_ADMIN()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### etherRaised()


**Execution cost**: less than 824 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### factory()


**Execution cost**: less than 955 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### allocateTokens(address,uint256,uint256,uint256)
>
> Function used to allocate tokens to the investor


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*

    > Address of the investor

2. **_amount** *of type `uint256`*

    > No. of tokens need to transfered to the investor

3. **_etherContributed** *of type `uint256`*

    > How much amount of ETH get contributed

4. **_polyContributed** *of type `uint256`*

    > How much amount of POLY get contributed



--- 
### configure(uint256)
>
> Function used to intialize the differnet variables


**Execution cost**: less than 20481 gas


Params:

1. **_endTime** *of type `uint256`*

    > Unix timestamp at which offering get ended



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


**Execution cost**: less than 626 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### investors(address)


**Execution cost**: less than 729 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### getRaisedPOLY()
>
>Return POLY raised by the STO


**Execution cost**: less than 692 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### investorCount()


**Execution cost**: less than 890 gas

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
### polyRaised()


**Execution cost**: less than 758 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### polyToken()


**Execution cost**: less than 757 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getRaisedEther()
>
>Return ETH raised by the STO 


**Execution cost**: less than 450 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### paused()


**Execution cost**: less than 561 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### getNumberInvestors()
>
>Return the total no. of investors 


**Execution cost**: less than 472 gas

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

[Back to the top ↑](#presalesto)
