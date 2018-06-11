# PercentageTransferManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/TransferManager/PercentageTransferManager.sol)


**Execution cost**: less than 102058 gas

**Deployment cost**: less than 830200 gas

**Combined cost**: less than 932258 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### LogModifyHolderPercentage(uint256,uint256)


**Execution cost**: No bound available


Params:

1. **_oldHolderPercentage** *of type `uint256`*
2. **_newHolderPercentage** *of type `uint256`*

--- 
### LogModifyWhitelist(address,uint256,address)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*
2. **_dateAdded** *of type `uint256`*
3. **_addedBy** *of type `address`*

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
### changeHolderPercentage(uint256)
>
> sets the maximum percentage that an individual token holder can hold


**Execution cost**: No bound available


Params:

1. **_maxHolderPercentage** *of type `uint256`*

    > is the new maximum percentage (multiplied by 10**16)



--- 
### FEE_ADMIN()


**Execution cost**: less than 736 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### polyToken()


**Execution cost**: less than 735 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### WHITELIST()


**Execution cost**: less than 228 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### verifyTransfer(address,address,uint256,bool)
>
>Used to verify the transfer transaction according to the rule implemented in the trnasfer managers


**Execution cost**: No bound available


Params:

1. **param_0** *of type `address`*
2. **_to** *of type `address`*
3. **_amount** *of type `uint256`*
4. **param_3** *of type `bool`*

Returns:


1. **output_0** *of type `uint8`*

--- 
### maxHolderPercentage()


**Execution cost**: less than 472 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### factory()


**Execution cost**: less than 867 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getPermissions()
>
>Return the permissions flag that are associated with Percentage transfer Manager


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### getInitFunction()
>
>This function returns the signature of configure function 


**Execution cost**: less than 293 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### configure(uint256)
>
> Used to intialize the variables of the contract


**Execution cost**: less than 20502 gas


Params:

1. **_maxHolderPercentage** *of type `uint256`*

    > Maximum amount of ST20 tokens(in %) can hold by the investor 



--- 
### modifyWhitelist(address,bool)
>
> adds or removes addresses from the whitelist.


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*

    > is the address to whitelist

2. **_valid** *of type `bool`*

    > whether or not the address it to be added or removed from the whitelist



--- 
### pause()


**Execution cost**: No bound available




--- 
### paused()


**Execution cost**: less than 539 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### securityToken()


**Execution cost**: less than 823 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

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
### unpause()


**Execution cost**: No bound available




--- 
### whitelist(address)


**Execution cost**: less than 807 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `bool`*

[Back to the top ↑](#percentagetransfermanager)
