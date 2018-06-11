# SecurityTokenRegistry
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/SecurityTokenRegistry.sol)


**Execution cost**: No bound available

**Deployment cost**: less than 1183200 gas

**Combined cost**: No bound available

## Constructor



Params:

1. **_polyAddress** *of type `address`*
2. **_moduleRegistry** *of type `address`*
3. **_tickerRegistry** *of type `address`*
4. **_stVersionProxy** *of type `address`*

## Events
### LogAddCustomSecurityToken(string,string,address,uint256)


**Execution cost**: No bound available


Params:

1. **_name** *of type `string`*
2. **_symbol** *of type `string`*
3. **_securityToken** *of type `address`*
4. **_addedAt** *of type `uint256`*

--- 
### LogNewSecurityToken(string,address,address)


**Execution cost**: No bound available


Params:

1. **_ticker** *of type `string`*
2. **_securityTokenAddress** *of type `address`*
3. **_owner** *of type `address`*

--- 
### OwnershipTransferred(address,address)


**Execution cost**: No bound available


Params:

1. **previousOwner** *of type `address`*
2. **newOwner** *of type `address`*


## Methods
### getSecurityTokenData(address)
>
> Get security token data by its address


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_securityToken** *of type `address`*

    > Address of the Scurity token


Returns:

> string, address, string

1. **output_0** *of type `string`*
2. **output_1** *of type `address`*
3. **output_2** *of type `string`*

--- 
### polyAddress()


**Execution cost**: less than 801 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getSecurityTokenAddress(string)
>
> Get security token address by ticker name


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_symbol** *of type `string`*

    > Symbol of the Scurity token


Returns:

> address _symbol

1. **output_0** *of type `address`*

--- 
### addCustomSecurityToken(string,string,address,string,bytes32)
>
> Add a new custom (Token should follow the ISecurityToken interface) Security Token and saves it to the registry


**Execution cost**: No bound available


Params:

1. **_name** *of type `string`*

    > Name of the token

2. **_symbol** *of type `string`*

    > Ticker symbol of the security token

3. **_securityToken** *of type `address`*

    > Address of the securityToken

4. **_tokenDetails** *of type `string`*

    > off-chain details of the token

5. **_swarmHash** *of type `bytes32`*

    > off-chain details about the issuer company



--- 
### isSecurityToken(address)
>
> Check that Security Token is registered


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_securityToken** *of type `address`*

    > Address of the Scurity token


Returns:

> bool

1. **output_0** *of type `bool`*

--- 
### owner()


**Execution cost**: less than 647 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### generateSecurityToken(string,string,string,bool)
>
> Creates a new Security Token and saves it to the registry


**Execution cost**: No bound available


Params:

1. **_name** *of type `string`*

    > Name of the token

2. **_symbol** *of type `string`*

    > Ticker symbol of the security token

3. **_tokenDetails** *of type `string`*

    > off-chain details of the token

4. **_divisible** *of type `bool`*


--- 
### moduleRegistry()


**Execution cost**: less than 691 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### protocolVersion()


**Execution cost**: less than 428 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### protocolVersionST(bytes32)


**Execution cost**: less than 697 gas

**Attributes**: constant


Params:

1. **param_0** *of type `bytes32`*

Returns:


1. **output_0** *of type `address`*

--- 
### setProtocolVersion(address,bytes32)
>
> Changes the protocol version and the SecurityToken contract that the registry points to Used only by Polymath to upgrade the SecurityToken contract and add more functionalities to future versions Changing versions does not affect existing tokens.


**Execution cost**: less than 40903 gas


Params:

1. **_stVersionProxyAddress** *of type `address`*
2. **_version** *of type `bytes32`*


--- 
### tickerRegistry()


**Execution cost**: less than 559 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### transferOwnership(address)
>
> Allows the current owner to transfer control of the contract to a newOwner.


**Execution cost**: less than 22951 gas


Params:

1. **newOwner** *of type `address`*

    > The address to transfer ownership to.



[Back to the top ↑](#securitytokenregistry)
