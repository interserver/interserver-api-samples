# InterServerAPI::Object::VpsOrderPostRequest

## Load the model package
```perl
use InterServerAPI::Object::VpsOrderPostRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**os_distro** | **string** | OS Distribution | 
**slices** | **int** | Number of slices | [default to 1]
**vps_platform** | **string** | VPS Platform | 
**controlpanel** | **string** | Control Panel | [optional] 
**period** | **int** | Billing Period or Frequency | [default to 1]
**location** | **int** | Location | [default to 1]
**os_version** | **string** | OS Version | 
**hostname** | **string** | The hostname to assign to the VPS | [default to &#39;&#39;]
**coupon** | **string** | Coupon | [optional] [default to &#39;&#39;]
**rootpass** | **string** | Root password to assign to the VVPS | 
**comment** | **string** | Order comments or notes | [optional] [default to &#39;&#39;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


