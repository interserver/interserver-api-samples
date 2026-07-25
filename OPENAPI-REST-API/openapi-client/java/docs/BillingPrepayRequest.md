

# BillingPrepayRequest

Request payload for creating a new prepay balance.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**module** | **String** | Module the prepay should be applied to (for example &#x60;default&#x60;). |  [optional] |
|**amount** | **BigDecimal** | Amount to add to prepay balance. Minimum is $10. |  [optional] |
|**automaticUse** | **String** | Whether the prepay balance should be used automatically. |  [optional] |


## Implemented Interfaces

* Serializable


