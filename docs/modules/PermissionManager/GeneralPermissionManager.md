# GeneralPermissionManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/PermissionManager/GeneralPermissionManager.sol)


**Execution cost**: less than 81581 gas

**Deployment cost**: less than 645400 gas

**Combined cost**: less than 726981 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### LogAddPermission(address,bytes32,uint256)


**Execution cost**: No bound available


Params:

1. **_delegate** *of type `address`*
2. **_details** *of type `bytes32`*
3. **_timestamp** *of type `uint256`*

--- 
### LogChangePermission(address,address,bytes32,bool,uint256)


**Execution cost**: No bound available


Params:

1. **_delegate** *of type `address`*
2. **_module** *of type `address`*
3. **_perm** *of type `bytes32`*
4. **_valid** *of type `bool`*
5. **_timestamp** *of type `uint256`*


## Methods
### checkPermission(address,address,bytes32)
>
> use to check the permission on delegate corresponds to module contract address


**Execution cost**: less than 1323 gas

**Attributes**: constant


Params:

1. **_delegate** *of type `address`*

    > Ethereum address of the delegate

2. **_module** *of type `address`*

    > Ethereum contract address of the module

3. **_perm** *of type `bytes32`*

    > Permission flag


Returns:

> bool

1. **output_0** *of type `bool`*

--- 
### delegateDetails(address)


**Execution cost**: less than 817 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `bytes32`*

--- 
### addPermission(address,bytes32)
>
> use to add the details of the delegate


**Execution cost**: No bound available


Params:

1. **_delegate** *of type `address`*

    > Ethereum address of the delegate

2. **_details** *of type `bytes32`*

    > Details about the delegate i.e `Belongs to financial firm`



--- 
### changePermission(address,address,bytes32,bool)
>
> Use to provide/change the permission to the delegate corresponds to the module contract


**Execution cost**: No bound available


Params:

1. **_delegate** *of type `address`*

    > Ethereum address of the delegate

2. **_module** *of type `address`*

    > Ethereum contract address of the module

3. **_perm** *of type `bytes32`*

    > Permission flag

4. **_valid** *of type `bool`*

    > Bool flag use to switch on/off the permission


Returns:

> bool

1. **output_0** *of type `bool`*

--- 
### FEE_ADMIN()


**Execution cost**: less than 626 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### CHANGE_PERMISSION()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### factory()


**Execution cost**: less than 757 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getDelegateDetails(address)
>
> Use to get the details of the delegate


**Execution cost**: less than 694 gas

**Attributes**: constant


Params:

1. **_delegate** *of type `address`*

    > Ethereum address of the delegate


Returns:

> Details of the delegate

1. **output_0** *of type `bytes32`*

--- 
### getInitFunction()
>
> Init function i.e generalise function to maintain the structure of the module contract


**Execution cost**: less than 193 gas



Returns:

> bytes4

1. **output_0** *of type `bytes4`*

--- 
### getPermissions()
>
> Use to get the Permission flag related the `this` contract


**Execution cost**: No bound available

**Attributes**: constant



Returns:

> Array of permission flags

1. **output_0** *of type `bytes32[]`*

--- 
### perms(address,address,bytes32)


**Execution cost**: less than 715 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*
2. **param_1** *of type `address`*
3. **param_2** *of type `bytes32`*

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


**Execution cost**: less than 713 gas

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

[Back to the top ↑](#generalpermissionmanager)
