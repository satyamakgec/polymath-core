# SecurityTokenV2
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/tokens/SecurityTokenV2.sol)
> SecurityToken V2


**Execution cost**: No bound available

**Deployment cost**: less than 3289800 gas

**Combined cost**: No bound available

## Constructor



Params:

1. **_name** *of type `string`*
2. **_symbol** *of type `string`*
3. **_decimals** *of type `uint8`*
4. **_granularity** *of type `uint256`*
5. **_tokenDetails** *of type `string`*
6. **_securityTokenRegistry** *of type `address`*

## Events
### LogCheckpointCreated(uint256,uint256)


**Execution cost**: No bound available


Params:

1. **_checkpointId** *of type `uint256`*
2. **_timestamp** *of type `uint256`*

--- 
### LogModuleAdded(uint8,bytes32,address,address,uint256,uint256,uint256)


**Execution cost**: No bound available


Params:

1. **_type** *of type `uint8`*
2. **_name** *of type `bytes32`*
3. **_moduleFactory** *of type `address`*
4. **_module** *of type `address`*
5. **_moduleCost** *of type `uint256`*
6. **_budget** *of type `uint256`*
7. **_timestamp** *of type `uint256`*

--- 
### LogGranularityChanged(uint256,uint256)


**Execution cost**: No bound available


Params:

1. **_oldGranularity** *of type `uint256`*
2. **_newGranularity** *of type `uint256`*

--- 
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
### LogFreezeTransfers(bool,uint256)


**Execution cost**: No bound available


Params:

1. **_freeze** *of type `bool`*
2. **_timestamp** *of type `uint256`*

--- 
### LogFinishedMinting(uint256)


**Execution cost**: No bound available


Params:

1. **_timestamp** *of type `uint256`*

--- 
### LogModuleBudgetChanged(uint8,address,uint256)


**Execution cost**: No bound available


Params:

1. **_moduleType** *of type `uint8`*
2. **_module** *of type `address`*
3. **_budget** *of type `uint256`*

--- 
### LogModuleRemoved(uint8,address,uint256)


**Execution cost**: No bound available


Params:

1. **_type** *of type `uint8`*
2. **_module** *of type `address`*
3. **_timestamp** *of type `uint256`*

--- 
### LogUpdateTokenDetails(string,string)


**Execution cost**: No bound available


Params:

1. **_oldDetails** *of type `string`*
2. **_newDetails** *of type `string`*

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
### modules(uint8,uint256)


**Execution cost**: less than 1808 gas

**Attributes**: constant


Params:

1. **param_0** *of type `uint8`*
2. **param_1** *of type `uint256`*

Returns:


1. **name** *of type `bytes32`*
2. **moduleAddress** *of type `address`*

--- 
### createCheckpoint()
>
> Creates a checkpoint that can be used to query historical balances / totalSuppy


**Execution cost**: No bound available



Returns:


1. **output_0** *of type `uint256`*

--- 
### checkpointBalances(address,uint256)


**Execution cost**: less than 2255 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*
2. **param_1** *of type `uint256`*

Returns:


1. **checkpointId** *of type `uint256`*
2. **value** *of type `uint256`*

--- 
### approve(address,uint256)
>
> Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.   * Beware that changing an allowance with this method brings the risk that someone may use both the old and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729


**Execution cost**: less than 22462 gas


Params:

1. **_spender** *of type `address`*

    > The address which will spend the funds.

2. **_value** *of type `uint256`*

    > The amount of tokens to be spent.


Returns:


1. **output_0** *of type `bool`*

--- 
### allowance(address,address)
>
> Function to check the amount of tokens that an owner allowed to a spender.


**Execution cost**: less than 1805 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > address The address which owns the funds.

2. **_spender** *of type `address`*

    > address The address which will spend the funds.


Returns:

> A uint256 specifying the amount of tokens still available for the spender.

1. **output_0** *of type `uint256`*

--- 
### CHECKPOINT_KEY()


**Execution cost**: less than 1202 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### changeGranularity(uint256)
>
> allows owner to change token granularity


**Execution cost**: less than 22197 gas


Params:

1. **_granularity** *of type `uint256`*


--- 
### addModule(address,bytes,uint256,uint256,bool)
>
> Function used to attach the module in security token


**Execution cost**: No bound available


Params:

1. **_moduleFactory** *of type `address`*

    > Contract address of the module factory that needs to be attached

2. **_data** *of type `bytes`*

    > Data used for the intialization of the module factory variables

3. **_maxCost** *of type `uint256`*

    > Maximum cost of the Module factory

4. **_budget** *of type `uint256`*

    > Budget of the Module factory

5. **_locked** *of type `bool`*

    > whether or not the module is supposed to be locked



--- 
### PERMISSIONMANAGER_KEY()


**Execution cost**: less than 1092 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### TRANSFERMANAGER_KEY()


**Execution cost**: less than 982 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

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
### checkpointTotalSupply(uint256)


**Execution cost**: less than 1641 gas

**Attributes**: constant


Params:

1. **param_0** *of type `uint256`*

Returns:


1. **checkpointId** *of type `uint256`*
2. **value** *of type `uint256`*

--- 
### balanceOf(address)
>
> Gets the balance of the specified address.


**Execution cost**: less than 1222 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > The address to query the the balance of.


Returns:

> An uint256 representing the amount owned by the passed address.

1. **output_0** *of type `uint256`*

--- 
### burn(uint256)
>
> Burn function used to burn the securityToken


**Execution cost**: No bound available


Params:

1. **_value** *of type `uint256`*

    > No. of token that get burned



--- 
### STO_KEY()


**Execution cost**: less than 740 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### changeModuleBudget(uint8,uint8,uint256)
>
> allows owner to approve more POLY to one of the modules


**Execution cost**: No bound available


Params:

1. **_moduleType** *of type `uint8`*
2. **_moduleIndex** *of type `uint8`*
3. **_budget** *of type `uint256`*


--- 
### balanceOfAt(address,uint256)
>
> Queries balances as of a defined checkpoint


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_investor** *of type `address`*

    > Investor to query balance for

2. **_checkpointId** *of type `uint256`*

    > Checkpoint ID to query as of


Returns:


1. **output_0** *of type `uint256`*

--- 
### MAX_MODULES()


**Execution cost**: less than 674 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### totalSupplyAt(uint256)
>
> Queries totalSupply as of a defined checkpoint


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_checkpointId** *of type `uint256`*

    > Checkpoint ID to query as of


Returns:


1. **output_0** *of type `uint256`*

--- 
### freezeTransfers()
>
> freeze all the transfers


**Execution cost**: less than 22451 gas




--- 
### currentCheckpointId()


**Execution cost**: less than 821 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### freeze()


**Execution cost**: less than 995 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### decimals()


**Execution cost**: less than 660 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### decreaseApproval(address,uint256)
>
> Decrease the amount of tokens that an owner allowed to a spender.   * approve should be called when allowed[_spender] == 0. To decrement allowed value is better to use this function to avoid 2 calls (and wait until the first transaction is mined) From MonolithDAO Token.sol


**Execution cost**: No bound available


Params:

1. **_spender** *of type `address`*

    > The address which will spend the funds.

2. **_subtractedValue** *of type `uint256`*

    > The amount of tokens to decrease the allowance by.


Returns:


1. **output_0** *of type `bool`*

--- 
### finishMinting()
>
> used to prevent forever minting only be called by the owner


**Execution cost**: less than 22452 gas




--- 
### tokenBurner()


**Execution cost**: less than 776 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### granularity()


**Execution cost**: less than 843 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### getModuleByName(uint8,bytes32)
>
> returns module list for a module name - will return first match


**Execution cost**: No bound available

**Attributes**: constant


Params:

1. **_moduleType** *of type `uint8`*

    > is which type of module we are trying to get

2. **_name** *of type `bytes32`*

    > is the name of the module within the chosen type


Returns:


1. **output_0** *of type `bytes32`*
2. **output_1** *of type `address`*
3. **output_2** *of type `bool`*

--- 
### getModule(uint8,uint256)
>
> returns module list for a module type


**Execution cost**: less than 2587 gas

**Attributes**: constant


Params:

1. **_moduleType** *of type `uint8`*

    > is which type of module we are trying to get

2. **_moduleIndex** *of type `uint256`*

    > is the index of the module within the chosen type


Returns:


1. **output_0** *of type `bytes32`*
2. **output_1** *of type `address`*
3. **output_2** *of type `bool`*

--- 
### transferFrom(address,address,uint256)
>
> Overloaded version of the transferFrom function


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_value** *of type `uint256`*

Returns:


1. **success** *of type `bool`*

--- 
### mint(address,uint256)
>
> mints new tokens and assigns them to the target _investor. Can only be called by the STO attached to the token (Or by the ST owner if there's no STO attached yet)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*

    > Address to whom the minted tokens will be dilivered

2. **_amount** *of type `uint256`*

    > Number of tokens get minted


Returns:

> success

1. **success** *of type `bool`*

--- 
### investorCount()


**Execution cost**: less than 1459 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### increaseApproval(address,uint256)
>
> Increase the amount of tokens that an owner allowed to a spender.   * approve should be called when allowed[_spender] == 0. To increment allowed value is better to use this function to avoid 2 calls (and wait until the first transaction is mined) From MonolithDAO Token.sol


**Execution cost**: less than 23875 gas


Params:

1. **_spender** *of type `address`*

    > The address which will spend the funds.

2. **_addedValue** *of type `uint256`*

    > The amount of tokens to increase the allowance by.


Returns:


1. **output_0** *of type `bool`*

--- 
### moduleRegistry()


**Execution cost**: less than 1524 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### polyToken()


**Execution cost**: less than 1128 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### mintMulti(address[],uint256[])
>
> mints new tokens and assigns them to the target _investor. Can only be called by the STO attached to the token (Or by the ST owner if there's no STO attached yet)


**Execution cost**: No bound available


Params:

1. **_investors** *of type `address[]`*

    > A list of addresses to whom the minted tokens will be dilivered

2. **_amounts** *of type `uint256[]`*

    > A list of number of tokens get minted and transfer to corresponding address of the investor from _investor[] list


Returns:

> success

1. **success** *of type `bool`*

--- 
### name()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### owner()


**Execution cost**: less than 1304 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### mintingFinished()


**Execution cost**: less than 555 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### modulesLocked(uint8)


**Execution cost**: less than 1197 gas

**Attributes**: constant


Params:

1. **param_0** *of type `uint8`*

Returns:


1. **output_0** *of type `bool`*

--- 
### unfreezeTransfers()
>
> un-freeze all the transfers


**Execution cost**: less than 22659 gas




--- 
### securityTokenVersion()


**Execution cost**: less than 689 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### removeModule(uint8,uint8)
>
> removes a module attached to the SecurityToken


**Execution cost**: No bound available


Params:

1. **_moduleType** *of type `uint8`*

    > is which type of module we are trying to remove

2. **_moduleIndex** *of type `uint8`*

    > is the index of the module within the chosen type



--- 
### setTokenBurner(address)
>
> used to set the token Burner address. It only be called by the owner


**Execution cost**: less than 21787 gas


Params:

1. **_tokenBurner** *of type `address`*

    > Address of the token burner contract



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
>
> total number of tokens in existence


**Execution cost**: less than 536 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### transfer(address,uint256)
>
> Overloaded version of the transfer function


**Execution cost**: No bound available


Params:

1. **_to** *of type `address`*
2. **_value** *of type `uint256`*

Returns:


1. **success** *of type `bool`*

--- 
### transferOwnership(address)
>
> Allows the current owner to transfer control of the contract to a newOwner.


**Execution cost**: less than 23850 gas


Params:

1. **newOwner** *of type `address`*

    > The address to transfer ownership to.



--- 
### updateTokenDetails(string)
>
> change the tokenDetails


**Execution cost**: No bound available


Params:

1. **_newTokenDetails** *of type `string`*


--- 
### verifyTransfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_amount** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### withdrawPoly(uint256)
>
> allows the owner to withdraw unspent POLY stored by them on the ST. Owner can transfer POLY to the ST which will be used to pay for modules that require a POLY fee.


**Execution cost**: No bound available


Params:

1. **_amount** *of type `uint256`*


[Back to the top ↑](#securitytokenv2)
