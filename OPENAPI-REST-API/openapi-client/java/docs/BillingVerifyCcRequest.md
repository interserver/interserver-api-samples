

# BillingVerifyCcRequest

Payload for verifying a credit card through the verification flow.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**idx** | **Integer** | Card index to verify. |  [optional] |
|**ccCcv2** | **String** | CVV code for verification. |  [optional] |
|**ccAmount1** | **String** | First micro-charge amount for verification. |  [optional] |
|**ccAmount2** | **String** | Second micro-charge amount for verification. |  [optional] |
|**terms** | **Boolean** | Whether terms were accepted for verification. |  [optional] |


## Implemented Interfaces

* Serializable


