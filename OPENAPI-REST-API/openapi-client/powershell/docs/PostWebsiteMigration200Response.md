# PostWebsiteMigration200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** | Confirmation message. | [optional] 
**Ticket** | **Int32** | The support ticket ID created for tracking the migration. Use this with &#x60;/tickets/{id}&#x60; to check migration progress. | [optional] 

## Examples

- Prepare the resource
```powershell
$PostWebsiteMigration200Response = Initialize-InterserverApiPostWebsiteMigration200Response  -Text null `
 -Ticket null
```

- Convert the resource to JSON
```powershell
$PostWebsiteMigration200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

