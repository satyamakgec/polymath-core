# IST20
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/interfaces/IST20.sol)


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
### Transfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **from** *of type `address`*
2. **to** *of type `address`*
3. **value** *of type `uint256`*


## Methods
### decreaseApproval(address,uint256)


**Execution cost**: No bound available


Params:

1. **_spender** *of type `address`*
2. **_subtractedValue** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

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
### balanceOf(address)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

Returns:


1. **output_0** *of type `uint256`*

--- 
### name()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### decimals()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### mint(address,uint256)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*
2. **_amount** *of type `uint256`*

Returns:


1. **success** *of type `bool`*

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
### transfer(address,uint256)


**Execution cost**: No bound available


Params:

1. **_to** *of type `address`*
2. **_value** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

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
### verifyTransfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_amount** *of type `uint256`*

Returns:


1. **success** *of type `bool`*

[Back to the top ↑](#ist20)
