# CloseTicketResponseSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloseTicketResponseSchema = Initialize-InterserverApiCloseTicketResponseSchema  -Success null `
 -Text null
```

- Convert the resource to JSON
```powershell
$CloseTicketResponseSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

