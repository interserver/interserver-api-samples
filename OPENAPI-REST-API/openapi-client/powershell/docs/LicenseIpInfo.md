# LicenseIpInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Table title | [optional] 
**Rows** | [**LicenseIpInfoRow[]**](LicenseIpInfoRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseIpInfo = Initialize-InterserverApiLicenseIpInfo  -Title IP Information `
 -Rows null
```

- Convert the resource to JSON
```powershell
$LicenseIpInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

