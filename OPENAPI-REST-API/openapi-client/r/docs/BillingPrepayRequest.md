# interserverapi::BillingPrepayRequest

Request payload for creating a new prepay balance.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**module** | **character** | Module the prepay should be applied to (for example &#x60;default&#x60;). | [optional] 
**amount** | **numeric** | Amount to add to prepay balance. Minimum is $10. | [optional] 
**automatic_use** | **character** | Whether the prepay balance should be used automatically. | [optional] 


