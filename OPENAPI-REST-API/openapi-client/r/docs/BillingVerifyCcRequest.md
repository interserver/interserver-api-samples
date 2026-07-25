# interserverapi::BillingVerifyCcRequest

Payload for verifying a credit card through the verification flow.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idx** | **integer** | Card index to verify. | [optional] 
**cc_ccv2** | **character** | CVV code for verification. | [optional] 
**cc_amount1** | **character** | First micro-charge amount for verification. | [optional] 
**cc_amount2** | **character** | Second micro-charge amount for verification. | [optional] 
**terms** | **character** | Whether terms were accepted for verification. | [optional] 


