# ISecurityTokenRegistry
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/interfaces/ISecurityTokenRegistry.sol)


**Execution cost**: No bound available

**Deployment cost**: No bound available

**Combined cost**: No bound available




## Methods
### generateSecurityToken(string,string,string,bool)


**Execution cost**: No bound available


Params:

1. **_name** *of type `string`*
2. **_symbol** *of type `string`*
3. **_tokenDetails** *of type `string`*
4. **_divisible** *of type `bool`*


--- 
### getSecurityTokenAddress(string)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_symbol** *of type `string`*

Returns:


1. **output_0** *of type `address`*

--- 
### getSecurityTokenData(address)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_securityToken** *of type `address`*

Returns:


1. **output_0** *of type `string`*
2. **output_1** *of type `address`*
3. **output_2** *of type `string`*

--- 
### isSecurityToken(address)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_securityToken** *of type `address`*

Returns:


1. **output_0** *of type `bool`*

--- 
### moduleRegistry()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### polyAddress()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### protocolVersion()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### protocolVersionST(bytes32)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **param_0** *of type `bytes32`*

Returns:


1. **output_0** *of type `address`*

--- 
### setProtocolVersion(address,bytes32)


**Execution cost**: No bound available


Params:

1. **_stVersionProxyAddress** *of type `address`*
2. **_version** *of type `bytes32`*


--- 
### tickerRegistry()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

[Back to the top ↑](#isecuritytokenregistry)
