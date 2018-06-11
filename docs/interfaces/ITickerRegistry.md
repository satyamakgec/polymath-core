# ITickerRegistry
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/interfaces/ITickerRegistry.sol)


**Execution cost**: No bound available

**Deployment cost**: No bound available

**Combined cost**: No bound available




## Methods
### checkValidity(string,address,string)


**Execution cost**: No bound available


Params:

1. **_symbol** *of type `string`*
2. **_owner** *of type `address`*
3. **_tokenName** *of type `string`*

Returns:


1. **output_0** *of type `bool`*

--- 
### getDetails(string)


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_symbol** *of type `string`*

Returns:


1. **output_0** *of type `address`*
2. **output_1** *of type `uint256`*
3. **output_2** *of type `string`*
4. **output_3** *of type `bytes32`*
5. **output_4** *of type `bool`*

--- 
### isReserved(string,address,string,bytes32)


**Execution cost**: No bound available


Params:

1. **_symbol** *of type `string`*
2. **_owner** *of type `address`*
3. **_tokenName** *of type `string`*
4. **_swarmHash** *of type `bytes32`*

Returns:


1. **output_0** *of type `bool`*

[Back to the top ↑](#itickerregistry)
