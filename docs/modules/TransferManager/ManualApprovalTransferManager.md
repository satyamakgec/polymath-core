# ManualApprovalTransferManager
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/modules/TransferManager/ManualApprovalTransferManager.sol)


**Execution cost**: less than 142983 gas

**Deployment cost**: less than 1226000 gas

**Combined cost**: less than 1368983 gas

## Constructor



Params:

1. **_securityToken** *of type `address`*
2. **_polyAddress** *of type `address`*

## Events
### LogAddManualApproval(address,address,uint256,uint256,address)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_allowance** *of type `uint256`*
4. **_expiryTime** *of type `uint256`*
5. **_addedBy** *of type `address`*

--- 
### LogAddManualBlocking(address,address,uint256,address)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_expiryTime** *of type `uint256`*
4. **_addedBy** *of type `address`*

--- 
### LogRevokeManualApproval(address,address,address)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_addedBy** *of type `address`*

--- 
### LogRevokeManualBlocking(address,address,address)


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_addedBy** *of type `address`*

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
### getInitFunction()
>
>This function returns the signature of configure function


**Execution cost**: less than 193 gas



Returns:


1. **output_0** *of type `bytes4`*

--- 
### FEE_ADMIN()


**Execution cost**: less than 780 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### factory()


**Execution cost**: less than 911 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### TRANSFER_APPROVAL()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### addManualApproval(address,address,uint256,uint256)
>
> adds a pair of addresses to manual approvals


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*

    > is the address from which transfers are approved

2. **_to** *of type `address`*

    > is the address to which transfers are approved

3. **_allowance** *of type `uint256`*

    > is the approved amount of tokens

4. **_expiryTime** *of type `uint256`*

    > is the time until which the transfer is allowed



--- 
### addManualBlocking(address,address,uint256)
>
> adds a pair of addresses to manual blockings


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*

    > is the address from which transfers are blocked

2. **_to** *of type `address`*

    > is the address to which transfers are blocked

3. **_expiryTime** *of type `uint256`*

    > is the time until which the transfer is blocked



--- 
### signingAddress()


**Execution cost**: less than 823 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### polyToken()


**Execution cost**: less than 669 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### manualBlockings(address,address)


**Execution cost**: less than 684 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*
2. **param_1** *of type `address`*

Returns:


1. **expiryTime** *of type `uint256`*

--- 
### getPermissions()
>
>Return the permissions flag that are associated with ManualApproval transfer manager


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### manualApprovals(address,address)


**Execution cost**: less than 1099 gas

**Attributes**: constant


Params:

1. **param_0** *of type `address`*
2. **param_1** *of type `address`*

Returns:


1. **allowance** *of type `uint256`*
2. **expiryTime** *of type `uint256`*

--- 
### paused()


**Execution cost**: less than 495 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `bool`*

--- 
### issuanceAddress()


**Execution cost**: less than 845 gas

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### revokeManualApproval(address,address)
>
> removes a pairs of addresses from manual approvals


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*

    > is the address from which transfers are approved

2. **_to** *of type `address`*

    > is the address to which transfers are approved



--- 
### revokeManualBlocking(address,address)
>
> removes a pairs of addresses from manual approvals


**Execution cost**: No bound available


Params:

1. **_from** *of type `address`*

    > is the address from which transfers are approved

2. **_to** *of type `address`*

    > is the address to which transfers are approved



--- 
### securityToken()


**Execution cost**: less than 867 gas

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


**Execution cost**: less than 22867 gas


Params:

1. **_from** *of type `address`*
2. **_to** *of type `address`*
3. **_amount** *of type `uint256`*
4. **_isTransfer** *of type `bool`*

Returns:


1. **output_0** *of type `uint8`*

[Back to the top ↑](#manualapprovaltransfermanager)
