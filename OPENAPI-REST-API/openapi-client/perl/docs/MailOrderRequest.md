# InterServerAPI::Object::MailOrderRequest

## Load the model package
```perl
use InterServerAPI::Object::MailOrderRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_type** | **int** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**coupon** | **string** | Coupon code. | [optional] [default to &#39;&#39;]
**comment** | **string** | Free-form note saved on the service row (used on addMail). | [optional] [default to &#39;&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


