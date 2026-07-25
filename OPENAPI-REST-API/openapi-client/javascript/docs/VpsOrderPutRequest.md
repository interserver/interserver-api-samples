# InterserverApiClient.VpsOrderPutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**osDistro** | **String** | OS Distribution | 
**slices** | **Number** | Number of slices | [default to 1]
**vpsPlatform** | **String** | VPS Platform | 
**period** | **Number** | Billing Period or Frequency | [default to 1]
**location** | **Number** | Location | [default to 1]
**osVersion** | **String** | OS Version | 
**hostname** | **String** | The hostname to assign to the VPS | [default to &#39;&#39;]
**rootpass** | **String** | Root password to assign to the VVPS | 
**controlpanel** | **String** | Control Panel | [optional] 
**coupon** | **String** | Coupon | [optional] [default to &#39;&#39;]
**comment** | **String** | Order comments or notes | [optional] [default to &#39;&#39;]



## Enum: VpsPlatformEnum


* `kvm` (value: `"kvm"`)

* `hyperv` (value: `"hyperv"`)

* `kvmstorage` (value: `"kvmstorage"`)

* `unknown_default_open_api` (value: `"unknown_default_open_api"`)





## Enum: ControlpanelEnum


* `none` (value: `"none"`)

* `cpanel` (value: `"cpanel"`)

* `da` (value: `"da"`)

* `unknown_default_open_api` (value: `"unknown_default_open_api"`)




