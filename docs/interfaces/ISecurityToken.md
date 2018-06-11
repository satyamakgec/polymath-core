# ISecurityToken
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/interfaces/ISecurityToken.sol)


**Execution cost**: No bound available

**Deployment cost**: No bound available

**Combined cost**: No bound available


## Events
### Approval(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **owner** *of type `address`*
2. **spender** *of type `address`*
3. **value** *of type `uint256`*

--- 
### Burnt(address,uint256)


**Execution cost**: No bound available


Params:

1. **_burner** *of type `address`*
2. **_value** *of type `uint256`*

--- 
### Minted(address,uint256)


**Execution cost**: No bound available


Params:

1. **to** *of type `address`*
2. **amount** *of type `uint256`*

--- 
### OwnershipTransferred(address,address)


**Execution cost**: No bound available


Params:

1. **previousOwner** *of type `address`*
2. **newOwner** *of type `address`*

--- 
### Transfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **from** *of type `address`*
2. **to** *of type `address`*
3. **value** *of type `uint256`*


## Methods
### owner()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### createCheckpoint()


**Execution cost**: No bound available



Returns:


1. **output_0** *of type `uint256`*

--- 
### allowance(address,address)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_owner** *of type `address`*
2. **_spender** *of type `address`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### CHECKPOINT_KEY()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### PERMISSIONMANAGER_KEY()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### TRANSFERMANAGER_KEY()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### burn(uint256)


**Execution cost**: No bound available


Params:

1. **_value** *of type `uint256`*


--- 
### approve(address,uint256)


**Execution cost**: No bound available


Params:

1. **_spender** *of type `address`*
2. **_value** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### balanceOfAt(address,uint256)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_investor** *of type `address`*
2. **_checkpointId** *of type `uint256`*

Returns:


1. **output_0** *of type `uint256`*

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
### STO_KEY()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### balanceOf(address)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### decimals()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### decreaseApproval(address,uint256)


**Execution cost**: No bound available


Params:

1. **_spender** *of type `address`*
2. **_subtractedValue** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### transfer(address,uint256)


**Execution cost**: No bound available


Params:

1. **_to** *of type `address`*
2. **_value** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### getModule(uint8,uint256)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_moduleType** *of type `uint8`*
2. **_moduleIndex** *of type `uint256`*

Returns:


1. **output_0** *of type `bytes32`*
2. **output_1** *of type `address`*
3. **output_2** *of type `bool`*

--- 
### transferFrom(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_value** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### name()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### investorCount()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getModuleByName(uint8,bytes32)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_moduleType** *of type `uint8`*
2. **_name** *of type `bytes32`*

Returns:


1. **output_0** *of type `bytes32`*
2. **output_1** *of type `address`*
3. **output_2** *of type `bool`*

--- 
### granularity()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### mint(address,uint256)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*
2. **_amount** *of type `uint256`*

Returns:


1. **success** *of type `bool`*

--- 
### increaseApproval(address,uint256)


**Execution cost**: No bound available


Params:

1. **_spender** *of type `address`*
2. **_addedValue** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### symbol()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### tokenDetails()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### totalSupply()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### totalSupplyAt(uint256)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_checkpointId** *of type `uint256`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### transferOwnership(address)


**Execution cost**: No bound available


Params:

1. **newOwner** *of type `address`*


--- 
### verifyTransfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_amount** *of type `uint256`*

Returns:


1. **success** *of type `bool`*

[Back to the top ↑](#isecuritytoken)
