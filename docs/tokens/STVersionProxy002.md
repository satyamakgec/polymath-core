# STVersionProxy002
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/tokens/STVersionProxy002.sol)


**Execution cost**: less than 44982 gas

**Deployment cost**: less than 3767600 gas

**Combined cost**: less than 3812582 gas

## Constructor



Params:

1. **_transferManagerFactory** *of type `address`*



## Methods
### deployToken(string,string,uint8,string,address,bool)
>
> deploys the token and adds default modules like permission manager and transfer manager. Future versions of the proxy can attach different modules or pass some other paramters.


**Execution cost**: No bound available


Params:

1. **_name** *of type `string`*
2. **_symbol** *of type `string`*
3. **_decimals** *of type `uint8`*
4. **_tokenDetails** *of type `string`*
5. **_issuer** *of type `address`*
6. **_divisible** *of type `bool`*

Returns:


1. **output_0** *of type `address`*

--- 
### transferManagerFactory()


**Execution cost**: less than 537 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

[Back to the top ↑](#stversionproxy002)
