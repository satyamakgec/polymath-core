# PolyTokenFaucet
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/mocks/PolyTokenFaucet.sol)


**Execution cost**: No bound available

**Deployment cost**: less than 349000 gas

**Combined cost**: No bound available


## Events
### Approval(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_owner** *of type `address`*
2. **_spender** *of type `address`*
3. **_value** *of type `uint256`*

--- 
### Transfer(address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_value** *of type `uint256`*


## Methods
### allowance(address,address)


**Execution cost**: less than 906 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > The address of the account owning tokens

2. **_spender** *of type `address`*

    > The address of the account able to transfer the tokens


Returns:

> Amount of remaining tokens allowed to spent

1. **remaining** *of type `uint256`*

--- 
### approve(address,uint256)
>
> `msg.sender` approves `_spender` to spend `_value` tokens


**Execution cost**: less than 22354 gas


Params:

1. **_spender** *of type `address`*

    > The address of the account able to transfer the tokens

2. **_value** *of type `uint256`*

    > The amount of tokens to be approved for transfer


Returns:

> Whether the approval was successful or not

1. **output_0** *of type `bool`*

--- 
### balanceOf(address)
>
> `balanceOf` function to get the balance of token holders


**Execution cost**: less than 738 gas

**Attributes**: constant


Params:

1. **_owner** *of type `address`*

    > The address from which the balance will be retrieved


Returns:

> The balance

1. **balance** *of type `uint256`*

--- 
### decimals()


**Execution cost**: less than 509 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### getTokens(uint256,address)


**Execution cost**: less than 40936 gas


Params:

1. **_amount** *of type `uint256`*
2. **_recipient** *of type `address`*

Returns:


1. **output_0** *of type `bool`*

--- 
### name()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### symbol()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### totalSupply()


**Execution cost**: less than 428 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### transfer(address,uint256)
>
> send `_value` token to `_to` from `msg.sender`


**Execution cost**: No bound available


Params:

1. **_to** *of type `address`*

    > The address of the recipient

2. **_value** *of type `uint256`*

    > The amount of token to be transferred


Returns:

> Whether the transfer was successful or not

1. **output_0** *of type `bool`*

--- 
### transferFrom(address,address,uint256)
>
> send `_value` token to `_to` from `_from` on the condition it is approved by `_from`


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*

    > The address of the sender

2. **_to** *of type `address`*

    > The address of the recipient

3. **_value** *of type `uint256`*

    > The amount of token to be transferred


Returns:

> Whether the transfer was successful or not

1. **output_0** *of type `bool`*

[Back to the top ↑](#polytokenfaucet)
