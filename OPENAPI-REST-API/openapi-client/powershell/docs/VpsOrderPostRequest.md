# VpsOrderPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OsDistro** | **String** | OS Distribution | 
**Slices** | **Int32** | Number of slices | [default to 1]
**VpsPlatform** | **String** | VPS Platform | 
**Period** | **Int32** | Billing Period or Frequency | [default to 1]
**Location** | **Int32** | Location | [default to 1]
**OsVersion** | **String** | OS Version | 
**Hostname** | **String** | The hostname to assign to the VPS | [default to ""]
**Rootpass** | **String** | Root password to assign to the VVPS | 
**Controlpanel** | **String** | Control Panel | [optional] 
**Coupon** | **String** | Coupon | [optional] [default to ""]
**Comment** | **String** | Order comments or notes | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$VpsOrderPostRequest = Initialize-InterserverApiVpsOrderPostRequest  -OsDistro null `
 -Slices null `
 -VpsPlatform null `
 -Period null `
 -Location null `
 -OsVersion null `
 -Hostname null `
 -Rootpass null `
 -Controlpanel null `
 -Coupon null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$VpsOrderPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

