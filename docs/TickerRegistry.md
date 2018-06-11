# TickerRegistry
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/TickerRegistry.sol)
> TickerRegistry


**Execution cost**: less than 41681 gas

**Deployment cost**: less than 1329800 gas

**Combined cost**: less than 1371481 gas

## Constructor




## Events
### LogChangeExpiryLimit(uint256,uint256)


**Execution cost**: No bound available


Params:

1. **_oldExpiry** *of type `uint256`*
2. **_newExpiry** *of type `uint256`*

--- 
### LogRegisterTicker(address,string,string,bytes32,uint256)


**Execution cost**: No bound available


Params:

1. **_owner** *of type `address`*
2. **_symbol** *of type `string`*
3. **_name** *of type `string`*
4. **_swarmHash** *of type `bytes32`*
5. **_timestamp** *of type `uint256`*

--- 
### OwnershipTransferred(address,address)


**Execution cost**: No bound available


Params:

1. **previousOwner** *of type `address`*
2. **newOwner** *of type `address`*


## Methods
### changeExpiryLimit(uint256)
>
> Change the expiry time for the token symbol


**Execution cost**: less than 22070 gas


Params:

1. **_newExpiry** *of type `uint256`*

    > new time period for token symbol expiry



--- 
### checkValidity(string,address,string)
>
> Check the validity of the symbol


**Execution cost**: No bound available


Params:

1. **_symbol** *of type `string`*

    > token symbol

2. **_owner** *of type `address`*

    > address of the owner

3. **_tokenName** *of type `string`*

    > Name of the token


Returns:

> bool

1. **output_0** *of type `bool`*

--- 
### expiryLimit()


**Execution cost**: less than 384 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getDetails(string)
>
> Returns the owner and timestamp for a given symbol


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_symbol** *of type `string`*

    > symbol


Returns:


1. **output_0** *of type `address`*
2. **output_1** *of type `uint256`*
3. **output_2** *of type `string`*
4. **output_3** *of type `bytes32`*
5. **output_4** *of type `bool`*

--- 
### isReserved(string,address,string,bytes32)
>
> Check the symbol is reserved or not


**Execution cost**: No bound available


Params:

1. **_symbol** *of type `string`*

    > Symbol of the token

2. **_owner** *of type `address`*

    > Owner of the token

3. **_tokenName** *of type `string`*

    > Name of the token

4. **_swarmHash** *of type `bytes32`*

    > off-chain hash


Returns:

> bool 

1. **output_0** *of type `bool`*

--- 
### owner()


**Execution cost**: less than 625 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### registerTicker(address,string,string,bytes32)
>
> Register the token symbol for its particular owner Once the token symbol is registered to its owner then no other issuer can claim its ownership. If the symbol expires and its issuer hasn't used it, then someone else can take it.


**Execution cost**: No bound available


Params:

1. **_owner** *of type `address`*

    > Address of the owner of the token

2. **_symbol** *of type `string`*

    > token symbol

3. **_tokenName** *of type `string`*

    > Name of the token

4. **_swarmHash** *of type `bytes32`*

    > Off-chain details of the issuer and token



--- 
### setTokenRegistry(address)
>
> set the address of the Security Token registry


**Execution cost**: less than 21351 gas


Params:

1. **_stRegistry** *of type `address`*

    > contract address of the STR


Returns:

> bool

1. **output_0** *of type `bool`*

--- 
### strAddress()


**Execution cost**: less than 669 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### transferOwnership(address)
>
> Allows the current owner to transfer control of the contract to a newOwner.


**Execution cost**: less than 22929 gas


Params:

1. **newOwner** *of type `address`*

    > The address to transfer ownership to.



[Back to the top ↑](#tickerregistry)
