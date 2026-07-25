# WebsiteRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WebsiteId** | **String** | The id of the website. | 
**WebsiteHostname** | **String** | The hostname of the website. | 
**RepeatInvoicesCost** | **String** | The repeat invoices cost of the website. | 
**WebsiteStatus** | **String** | The status of the website. | 
**ServicesName** | **String** | The services name of the website. | 
**WebsiteComment** | **String** | The comment of the website. | 

## Examples

- Prepare the resource
```powershell
$WebsiteRow = Initialize-InterserverApiWebsiteRow  -WebsiteId 376359 `
 -WebsiteHostname hussfamily.com `
 -RepeatInvoicesCost 5.99 `
 -WebsiteStatus active `
 -ServicesName Standard Web Hosting `
 -WebsiteComment website for manhattan project.
```

- Convert the resource to JSON
```powershell
$WebsiteRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

