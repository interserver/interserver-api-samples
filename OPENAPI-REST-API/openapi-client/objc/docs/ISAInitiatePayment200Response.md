# ISAInitiatePayment200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). | [optional] 
**redirect** | **NSString*** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). | [optional] 
**action** | **NSString*** | Form action URL (when type is &#x60;submit&#x60;). | [optional] 
**method** | **NSString*** | HTTP method for the form submission (when type is &#x60;submit&#x60;). | [optional] 
**items** | [**NSObject***](.md) | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). | [optional] 
**text** | **NSString*** | Status or result text. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


