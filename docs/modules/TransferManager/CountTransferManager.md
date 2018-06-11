# CountTransferManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/TransferManager/CountTransferManager.sol)


**Execution cost**: less than 101858 gas

**Deployment cost**: less than 629000 gas

**Combined cost**: less than 730858 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### LogModifyHolderCount(uint256,uint256)


**Execution cost**: No bound available


Params:

1. **_oldHolderCount** *of type `uint256`*
2. **_newHolderCount** *of type `uint256`*

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


**Execution cost**: No bound available




--- 
### changeHolderCount(uint256)
>
> sets the maximum percentage that an individual token holder can hold


**Execution cost**: No bound available


Params:

1. **_maxHolderCount** *of type `uint256`*

    > is the new maximum amount a holder can hold



--- 
### FEE_ADMIN()


**Execution cost**: less than 648 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### maxHolderCount()


**Execution cost**: less than 560 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getInitFunction()
>
>This function returns the signature of configure function 


**Execution cost**: less than 271 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### factory()


**Execution cost**: less than 779 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### configure(uint256)
>
> Used to intialize the variables of the contract


**Execution cost**: less than 20458 gas


Params:

1. **_maxHolderCount** *of type `uint256`*

    > Maximum no. of holders for the securityToken



--- 
### getPermissions()
>
>Return the permissions flag that are associated with CountTransferManager


**Execution cost**: less than 569 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### paused()


**Execution cost**: less than 473 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### polyToken()


**Execution cost**: less than 647 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### securityToken()


**Execution cost**: less than 735 gas

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
### verifyTransfer(address,address,uint256,bool)
>
>Used to verify the transfer transaction according to the rule implemented in the trnasfer managers


**Execution cost**: No bound available


Params:

1. **param_0** *of type `address`*
2. **_to** *of type `address`*
3. **param_2** *of type `uint256`*
4. **param_3** *of type `bool`*

Returns:


1. **output_0** *of type `uint8`*

[Back to the top ↑](#counttransfermanager)
