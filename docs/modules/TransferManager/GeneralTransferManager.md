# GeneralTransferManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/TransferManager/GeneralTransferManager.sol)


**Execution cost**: less than 164009 gas

**Deployment cost**: less than 1949800 gas

**Combined cost**: less than 2113809 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### LogAllowAllBurnTransfers(bool)


**Execution cost**: No bound available


Params:

1. **_allowAllBurnTransfers** *of type `bool`*

--- 
### LogAllowAllTransfers(bool)


**Execution cost**: No bound available


Params:

1. **_allowAllTransfers** *of type `bool`*

--- 
### LogAllowAllWhitelistIssuances(bool)


**Execution cost**: No bound available


Params:

1. **_allowAllWhitelistIssuances** *of type `bool`*

--- 
### LogAllowAllWhitelistTransfers(bool)


**Execution cost**: No bound available


Params:

1. **_allowAllWhitelistTransfers** *of type `bool`*

--- 
### LogChangeIssuanceAddress(address)


**Execution cost**: No bound available


Params:

1. **_issuanceAddress** *of type `address`*

--- 
### LogChangeSigningAddress(address)


**Execution cost**: No bound available


Params:

1. **_signingAddress** *of type `address`*

--- 
### LogModifyWhitelist(address,uint256,address,uint256,uint256,uint256,bool)


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*
2. **_dateAdded** *of type `uint256`*
3. **_addedBy** *of type `address`*
4. **_fromTime** *of type `uint256`*
5. **_toTime** *of type `uint256`*
6. **_expiryTime** *of type `uint256`*
7. **_canBuyFromSTO** *of type `bool`*

--- 
### Pause(uint256)


**Execution cost**: No bound available


Params:

1. **_timestammp** *of type `uint256`*

--- 
### Unpause(uint256)


**Execution cost**: No bound available


Params:

1. **_timestamp** *of type `uint256`*


## Methods
### pause()


**Execution cost**: No bound available




--- 
### changeAllowAllBurnTransfers(bool)
>
> Used to change the flag true - It allow to burn the tokens false - It deactivate the burning mechanism.


**Execution cost**: No bound available


Params:

1. **_allowAllBurnTransfers** *of type `bool`*

    > flag value



--- 
### allowAllBurnTransfers()


**Execution cost**: less than 451 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### allowAllWhitelistIssuances()


**Execution cost**: less than 1001 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### WHITELIST()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### allowAllWhitelistTransfers()


**Execution cost**: less than 517 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### FEE_ADMIN()


**Execution cost**: less than 912 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### allowAllTransfers()


**Execution cost**: less than 792 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### FLAGS()


**Execution cost**: less than 607 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### signingAddress()


**Execution cost**: less than 955 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### modifyWhitelistSigned(address,uint256,uint256,uint256,bool,uint256,uint256,uint8,bytes32,bytes32)
>
> adds or removes addresses from the whitelist - can be called by anyone with a valid signature


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*

    > is the address to whitelist

2. **_fromTime** *of type `uint256`*

    > is the moment when the sale lockup period ends and the investor can freely sell his tokens

3. **_toTime** *of type `uint256`*

    > is the moment when the purchase lockup period ends and the investor can freely purchase tokens from others

4. **_expiryTime** *of type `uint256`*

    > is the moment till investors KYC will be validated. After that investor need to do re-KYC

5. **_canBuyFromSTO** *of type `bool`*

    > is used to know whether the investor is restricted investor or not.

6. **_validFrom** *of type `uint256`*

    > is the time that this signature is valid from

7. **_validTo** *of type `uint256`*

    > is the time that this signature is valid until

8. **_v** *of type `uint8`*

    > issuer signature

9. **_r** *of type `bytes32`*

    > issuer signature

10. **_s** *of type `bytes32`*

    > issuer signature



--- 
### getInitFunction()
>
>This function returns the signature of configure function 


**Execution cost**: less than 259 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### changeIssuanceAddress(address)
>
> Used to change the Issuance Address


**Execution cost**: No bound available


Params:

1. **_issuanceAddress** *of type `address`*

    > new address for the issuance



--- 
### changeAllowAllWhitelistIssuances(bool)
>
> Used to change the flag true - It refers that time lock is ignored for issuances (address must still be on whitelist) false - It refers transfers are restricted for all addresses.


**Execution cost**: No bound available


Params:

1. **_allowAllWhitelistIssuances** *of type `bool`*

    > flag value



--- 
### modifyWhitelistMulti(address[],uint256[],uint256[],uint256[],bool[])
>
> adds or removes addresses from the whitelist.


**Execution cost**: No bound available


Params:

1. **_investors** *of type `address[]`*

    > List of the addresses to whitelist

2. **_fromTimes** *of type `uint256[]`*

    > An array of the moment when the sale lockup period ends and the investor can freely sell his tokens

3. **_toTimes** *of type `uint256[]`*

    > An array of the moment when the purchase lockup period ends and the investor can freely purchase tokens from others

4. **_expiryTimes** *of type `uint256[]`*

    > An array of the moment till investors KYC will be validated. After that investor need to do re-KYC

5. **_canBuyFromSTO** *of type `bool[]`*

    > An array of boolean values



--- 
### changeAllowAllWhitelistTransfers(bool)
>
> Used to change the flag true - It refers that time lock is ignored for transfers (address must still be on whitelist) false - It refers transfers are restricted for all addresses.


**Execution cost**: No bound available


Params:

1. **_allowAllWhitelistTransfers** *of type `bool`*

    > flag value



--- 
### changeSigningAddress(address)
>
> Used to change the Sigining Address


**Execution cost**: No bound available


Params:

1. **_signingAddress** *of type `address`*

    > new address for the signing



--- 
### modifyWhitelist(address,uint256,uint256,uint256,bool)
>
> adds or removes addresses from the whitelist.


**Execution cost**: No bound available


Params:

1. **_investor** *of type `address`*

    > is the address to whitelist

2. **_fromTime** *of type `uint256`*

    > is the moment when the sale lockup period ends and the investor can freely sell his tokens

3. **_toTime** *of type `uint256`*

    > is the moment when the purchase lockup period ends and the investor can freely purchase tokens from others

4. **_expiryTime** *of type `uint256`*

    > is the moment till investors KYC will be validated. After that investor need to do re-KYC

5. **_canBuyFromSTO** *of type `bool`*

    > is used to know whether the investor is restricted investor or not.



--- 
### changeAllowAllTransfers(bool)
>
> Used to change the flag true - It refers there are no transfer restrictions, for any addresses false - It refers transfers are restricted for all addresses.


**Execution cost**: No bound available


Params:

1. **_allowAllTransfers** *of type `bool`*

    > flag value



--- 
### factory()


**Execution cost**: less than 1043 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### issuanceAddress()


**Execution cost**: less than 977 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### getPermissions()
>
>Return the permissions flag that are associated with general trnasfer manager


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### paused()


**Execution cost**: less than 605 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### polyToken()


**Execution cost**: less than 779 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### securityToken()


**Execution cost**: less than 999 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### takeFee(uint256)
>
> used to withdraw the fee by the factory owner


**Execution cost**: No bound available


Params:

1. **_amount** *of type `uint256`*

Returns:


1. **output_0** *of type `bool`*

--- 
### unpause()


**Execution cost**: No bound available




--- 
### verifyTransfer(address,address,uint256,bool)
>
> default implementation of verifyTransfer used by SecurityToken If the transfer request comes from the STO, it only checks that the investor is in the whitelist If the transfer request comes from a token holder, it checks that: a) Both are on the whitelist b) Seller's sale lockup period is over c) Buyer's purchase lockup is over


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **param_2** *of type `uint256`*
4. **param_3** *of type `bool`*

Returns:


1. **output_0** *of type `uint8`*

--- 
### whitelist(address)


**Execution cost**: less than 1625 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*

Returns:


1. **fromTime** *of type `uint256`*
2. **toTime** *of type `uint256`*
3. **expiryTime** *of type `uint256`*
4. **canBuyFromSTO** *of type `bool`*

[Back to the top ↑](#generaltransfermanager)
