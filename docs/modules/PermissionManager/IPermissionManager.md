# IPermissionManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/PermissionManager/IPermissionManager.sol)


**Execution cost**: No bound available

**Deployment cost**: No bound available

**Combined cost**: No bound available




## Methods
### FEE_ADMIN()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### changePermission(address,address,bytes32,bool)


**Execution cost**: No bound available


Params:

1. **_delegate** *of type `address`*
2. **_module** *of type `address`*
3. **_perm** *of type `bytes32`*
4. **_valid** *of type `bool`*

Returns:


1. **output_0** *of type `bool`*

--- 
### checkPermission(address,address,bytes32)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_delegate** *of type `address`*
2. **_module** *of type `address`*
3. **_perm** *of type `bytes32`*

Returns:


1. **output_0** *of type `bool`*

--- 
### factory()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getDelegateDetails(address)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_delegate** *of type `address`*

Returns:


1. **output_0** *of type `bytes32`*

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

[Back to the top ↑](#ipermissionmanager)
