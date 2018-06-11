# ITransferManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/TransferManager/ITransferManager.sol)


**Execution cost**: No bound available

**Deployment cost**: No bound available

**Combined cost**: No bound available


## Events
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
### verifyTransfer(address,address,uint256,bool)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_amount** *of type `uint256`*
4. **_isTransfer** *of type `bool`*

Returns:


1. **output_0** *of type `uint8`*

--- 
### FEE_ADMIN()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### factory()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getInitFunction()


**Execution cost**: No bound available



Returns:


1. **output_0** *of type `bytes4`*

--- 
### getPermissions()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### pause()


**Execution cost**: No bound available




--- 
### paused()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### polyToken()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### securityToken()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### takeFee(uint256)


**Execution cost**: No bound available


Params:

1. **_amount** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### unpause()


**Execution cost**: No bound available




[Back to the top ↑](#itransfermanager)
