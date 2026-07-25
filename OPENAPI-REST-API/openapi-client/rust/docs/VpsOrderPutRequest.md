# VpsOrderPutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**os_distro** | **String** | OS Distribution | 
**slices** | **u32** | Number of slices | [default to 1]
**vps_platform** | **VpsPlatform** | VPS Platform (enum: kvm, hyperv, kvmstorage) | 
**period** | **u32** | Billing Period or Frequency | [default to 1]
**location** | **u32** | Location | [default to 1]
**os_version** | **String** | OS Version | 
**hostname** | **String** | The hostname to assign to the VPS | [default to ]
**rootpass** | **String** | Root password to assign to the VVPS | 
**controlpanel** | Option<**Controlpanel**> | Control Panel (enum: none, cpanel, da) | [optional]
**coupon** | Option<**String**> | Coupon | [optional][default to ]
**comment** | Option<**String**> | Order comments or notes | [optional][default to ]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


