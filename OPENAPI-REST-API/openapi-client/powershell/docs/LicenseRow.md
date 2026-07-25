# LicenseRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** | **String** | The id of the license. | [optional] 
**LicenseHostname** | **String** | The hostname of the license. | [optional] 
**LicenseIp** | **String** | The ip of the license. | [optional] 
**ServicesName** | **String** | The services name of the license. | [optional] 
**Cost** | **String** | The cost of the license. | [optional] 
**LicenseStatus** | **String** | The status of the license. | [optional] 
**InvoicesPaid** | **String** | The invoices paid of the license. | [optional] 
**InvoicesDate** | **System.DateTime** | The invoices date of the license. | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseRow = Initialize-InterserverApiLicenseRow  -LicenseId 386111 `
 -LicenseHostname  `
 -LicenseIp 66.45.228.100 `
 -ServicesName Imunify360 up to 30 users `
 -Cost 25.00 `
 -LicenseStatus canceled `
 -InvoicesPaid 1 `
 -InvoicesDate 2019-08-28T14:27:22Z
```

- Convert the resource to JSON
```powershell
$LicenseRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

