# VpsOrderPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OsDistro** | **String** | OS Distribution | 
**Slices** | **Int32** | Number of slices | [default to 1]
**VpsPlatform** | **String** | VPS Platform | 
**Controlpanel** | **String** | Control Panel | [optional] 
**Period** | **Int32** | Billing Period or Frequency | [default to 1]
**Location** | **Int32** | Location | [default to 1]
**OsVersion** | **String** | OS Version | 
**Hostname** | **String** | The hostname to assign to the VPS | [default to ""]
**Coupon** | **String** | Coupon | [optional] [default to ""]
**Rootpass** | **String** | Root password to assign to the VVPS | 
**Comment** | **String** | Order comments or notes | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$VpsOrderPostRequest = Initialize-InterserverApiVpsOrderPostRequest  -OsDistro null `
 -Slices null `
 -VpsPlatform null `
 -Controlpanel null `
 -Period null `
 -Location null `
 -OsVersion null `
 -Hostname null `
 -Coupon null `
 -Rootpass null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$VpsOrderPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

