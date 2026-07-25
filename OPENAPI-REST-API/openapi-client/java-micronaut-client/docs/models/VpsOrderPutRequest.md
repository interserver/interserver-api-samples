

# VpsOrderPutRequest

request to validate a vps order

The class is defined in **[VpsOrderPutRequest.java](../../src/main/java/org/openapitools/model/VpsOrderPutRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**osDistro** | `String` | OS Distribution | 
**slices** | `Integer` | Number of slices | 
**vpsPlatform** | [**VpsPlatformEnum**](#VpsPlatformEnum) | VPS Platform | 
**period** | `Integer` | Billing Period or Frequency | 
**location** | `Integer` | Location | 
**osVersion** | `String` | OS Version | 
**hostname** | `String` | The hostname to assign to the VPS | 
**rootpass** | `String` | Root password to assign to the VVPS | 
**controlpanel** | [**ControlpanelEnum**](#ControlpanelEnum) | Control Panel |  [optional property]
**coupon** | `String` | Coupon |  [optional property]
**comment** | `String` | Order comments or notes |  [optional property]



## VpsPlatformEnum

Name | Value
---- | -----
KVM | `"kvm"`
HYPERV | `"hyperv"`
KVMSTORAGE | `"kvmstorage"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`






## ControlpanelEnum

Name | Value
---- | -----
NONE | `"none"`
CPANEL | `"cpanel"`
DA | `"da"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`




