# interserverapi::ServersBuyNowError

Error response when a buy-it-now server order fails validation.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **character** | Always false for error responses. | [optional] 
**text** | **character** | Human-readable error summary. | [optional] 
**errors** | **array[character]** | List of specific validation error messages. | [optional] 


