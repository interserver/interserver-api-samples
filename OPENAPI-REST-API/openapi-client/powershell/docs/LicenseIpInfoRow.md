# LicenseIpInfoRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Desc** | **String** | Row description | [optional] 
**Value** | **String** | Row value | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseIpInfoRow = Initialize-InterserverApiLicenseIpInfoRow  -Desc Netmask `
 -Value 255.255.255.248
```

- Convert the resource to JSON
```powershell
$LicenseIpInfoRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

