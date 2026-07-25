# LicenseClientLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | Link label | 
**Link** | **String** | Link URL | 
**Icon** | **String** | Link icon | 
**HelpText** | **String** | Help text | 
**IconText** | **String** | Icon text | [optional] 
**OtherAttr** | **String** | Other attributes | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseClientLink = Initialize-InterserverApiLicenseClientLink  -Label Invoices `
 -Link invoices `
 -Icon fas fa-file-invoice-dollar fa-w-12 `
 -HelpText Invoice History `
 -IconText  `
 -OtherAttr 
```

- Convert the resource to JSON
```powershell
$LicenseClientLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

