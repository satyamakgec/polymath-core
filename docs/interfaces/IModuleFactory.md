# IModuleFactory
[see the source](git+https://github.com/PolymathNetwork/polymath-core/tree/master//Users/satyamagrawal/Repositories/polymath-core_v2/contracts/interfaces/IModuleFactory.sol)


**Execution cost**: No bound available

**Deployment cost**: No bound available

**Combined cost**: No bound available

## Constructor



Params:

1. **_polyAddress** *of type `address`*
2. **_setupCost** *of type `uint256`*
3. **_usageCost** *of type `uint256`*
4. **_subscriptionCost** *of type `uint256`*

## Events
### LogChangeFactorySetupFee(uint256,uint256,address)


**Execution cost**: No bound available


Params:

1. **_oldSetupcost** *of type `uint256`*
2. **_newSetupCost** *of type `uint256`*
3. **_moduleFactory** *of type `address`*

--- 
### LogChangeFactorySubscriptionFee(uint256,uint256,address)


**Execution cost**: No bound available


Params:

1. **_oldSubscriptionCost** *of type `uint256`*
2. **_newMonthlySubscriptionCost** *of type `uint256`*
3. **_moduleFactory** *of type `address`*

--- 
### LogChangeFactoryUsageFee(uint256,uint256,address)


**Execution cost**: No bound available


Params:

1. **_oldUsageCost** *of type `uint256`*
2. **_newUsageCost** *of type `uint256`*
3. **_moduleFactory** *of type `address`*

--- 
### LogGenerateModuleFromFactory(address,bytes32,address,address,uint256)


**Execution cost**: No bound available


Params:

1. **_module** *of type `address`*
2. **_moduleName** *of type `bytes32`*
3. **_moduleFactory** *of type `address`*
4. **_creator** *of type `address`*
5. **_timestamp** *of type `uint256`*

--- 
### OwnershipTransferred(address,address)


**Execution cost**: No bound available


Params:

1. **previousOwner** *of type `address`*
2. **newOwner** *of type `address`*


## Methods
### setupCost()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### deploy(bytes)


**Execution cost**: No bound available


Params:

1. **_data** *of type `bytes`*

Returns:


1. **output_0** *of type `address`*

--- 
### changeFactoryUsageFee(uint256)


**Execution cost**: No bound available


Params:

1. **_newUsageCost** *of type `uint256`*


--- 
### changeFactorySetupFee(uint256)


**Execution cost**: No bound available


Params:

1. **_newSetupCost** *of type `uint256`*


--- 
### changeFactorySubscriptionFee(uint256)


**Execution cost**: No bound available


Params:

1. **_newSubscriptionCost** *of type `uint256`*


--- 
### getTags()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32[]`*

--- 
### getDescription()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### getInstructions()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### getName()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `bytes32`*

--- 
### getTitle()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `string`*

--- 
### getType()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint8`*

--- 
### monthlySubscriptionCost()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

--- 
### owner()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### polyToken()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `address`*

--- 
### transferOwnership(address)


**Execution cost**: No bound available


Params:

1. **newOwner** *of type `address`*


--- 
### usageCost()


**Execution cost**: No bound available

**Attributes**: constant



Returns:


1. **output_0** *of type `uint256`*

[Back to the top ↑](#imodulefactory)
