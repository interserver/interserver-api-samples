# InterServerAPI::Object::QsOrderRequest

## Load the model package
```perl
use InterServerAPI::Object::QsOrderRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server** | **int** | QuickServer plan/server id from getNewQs. | 
**password** | **string** | Root password for the QuickServer. | 
**os** | **string** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to &#39;&#39;]
**tos** | **boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **string** | Free-form note saved on the service row. | [optional] [default to &#39;&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


