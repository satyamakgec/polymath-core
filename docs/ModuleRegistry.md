# ModuleRegistry
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/ModuleRegistry.sol)
> ModuleRegistry


**Execution cost**: less than 21164 gas

**Deployment cost**: less than 857800 gas

**Combined cost**: less than 878964 gas


## Events
### LogModuleRegistered(address,address)


**Execution cost**: No bound available


Params:

1. **_moduleFactory** *of type `address`*
2. **_owner** *of type `address`*

--- 
### LogModuleUsed(address,address)


**Execution cost**: No bound available


Params:

1. **_moduleFactory** *of type `address`*
2. **_securityToken** *of type `address`*

--- 
### LogModuleVerified(address,bool)


**Execution cost**: No bound available


Params:

1. **_moduleFactory** *of type `address`*
2. **_verified** *of type `bool`*

--- 
### OwnershipTransferred(address,address)


**Execution cost**: No bound available


Params:

1. **previousOwner** *of type `address`*
2. **newOwner** *of type `address`*


## Methods
### availableTags(uint8,uint256)


**Execution cost**: less than 983 gas

**Attributes**: constant


Params:

1. **param_0** *of type `uint8`*
2. **param_1** *of type `uint256`*

Returns:


1. **output_0** *of type `bytes32`*

--- 
### registry(address)


**Execution cost**: less than 609 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `uint8`*

--- 
### registerModule(address)
>
> Called by moduleFactory owner to register new modules for SecurityToken to use


**Execution cost**: No bound available


Params:

1. **_moduleFactory** *of type `address`*

    > is the address of the module factory to be registered


Returns:


1. **output_0** *of type `bool`*

--- 
### moduleList(uint8,uint256)


**Execution cost**: less than 1049 gas

**Attributes**: constant


Params:

1. **param_0** *of type `uint8`*
2. **param_1** *of type `uint256`*

Returns:


1. **output_0** *of type `address`*

--- 
### addTagByModuleType(uint8,bytes32[])
>
> Add the tag for specified Module Factory


**Execution cost**: No bound available


Params:

1. **_moduleType** *of type `uint8`*

    > Type of module.

2. **_tag** *of type `bytes32[]`*

    > List of tags



--- 
### owner()


**Execution cost**: less than 776 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getTagByModuleType(uint8)
>
> Use to get all the tags releated to the functionality of the Module Factory.


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_moduleType** *of type `uint8`*

    > Type of module


Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### removeTagByModuleType(uint8,bytes32[])
>
> remove the tag for specified Module Factory


**Execution cost**: No bound available


Params:

1. **_moduleType** *of type `uint8`*

    > Type of module.

2. **_removedTags** *of type `bytes32[]`*

    > List of tags



--- 
### reputation(address,uint256)


**Execution cost**: less than 1162 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*
2. **param_1** *of type `uint256`*

Returns:


1. **output_0** *of type `address`*

--- 
### securityTokenRegistry()


**Execution cost**: less than 842 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### setTokenRegistry(address)
>
> Called by owner to set the token registry address


**Execution cost**: less than 21071 gas


Params:

1. **_securityTokenRegistry** *of type `address`*

    > is the address of the token registry



--- 
### transferOwnership(address)
>
> Allows the current owner to transfer control of the contract to a newOwner.


**Execution cost**: less than 23102 gas


Params:

1. **newOwner** *of type `address`*

    > The address to transfer ownership to.



--- 
### useModule(address)
>
> Called by a security token to notify the registry it is using a module


**Execution cost**: No bound available


Params:

1. **_moduleFactory** *of type `address`*

    > is the address of the relevant module factory



--- 
### verified(address)


**Execution cost**: less than 628 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **output_0** *of type `bool`*

--- 
### verifyModule(address,bool)
>
> Called by Polymath to verify modules for SecurityToken to use. A module can not be used by an ST unless first approved/verified by Polymath (The only exception to this is that the author of the module is the owner of the ST)


**Execution cost**: less than 23138 gas


Params:

1. **_moduleFactory** *of type `address`*

    > is the address of the module factory to be registered

2. **_verified** *of type `bool`*

Returns:


1. **output_0** *of type `bool`*

[Back to the top ↑](#moduleregistry)
