

# VpsOrderPutRequest

request to validate a vps order

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**osDistro** | **String** | OS Distribution |  |
|**slices** | **Integer** | Number of slices |  |
|**vpsPlatform** | [**VpsPlatformEnum**](#VpsPlatformEnum) | VPS Platform |  |
|**period** | **Integer** | Billing Period or Frequency |  |
|**location** | **Integer** | Location |  |
|**osVersion** | **String** | OS Version |  |
|**hostname** | **String** | The hostname to assign to the VPS |  |
|**rootpass** | **String** | Root password to assign to the VVPS |  |
|**controlpanel** | [**ControlpanelEnum**](#ControlpanelEnum) | Control Panel |  [optional] |
|**coupon** | **String** | Coupon |  [optional] |
|**comment** | **String** | Order comments or notes |  [optional] |



## Enum: VpsPlatformEnum

| Name | Value |
|---- | -----|
| kvm | &quot;kvm&quot; |
| hyperv | &quot;hyperv&quot; |
| kvmstorage | &quot;kvmstorage&quot; |
| unknown_default_open_api | &quot;unknown_default_open_api&quot; |



## Enum: ControlpanelEnum

| Name | Value |
|---- | -----|
| none | &quot;none&quot; |
| cpanel | &quot;cpanel&quot; |
| da | &quot;da&quot; |
| unknown_default_open_api | &quot;unknown_default_open_api&quot; |


## Implemented Interfaces

* Serializable


