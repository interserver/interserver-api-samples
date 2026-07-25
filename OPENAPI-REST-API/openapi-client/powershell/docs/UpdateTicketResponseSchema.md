# UpdateTicketResponseSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateTicketResponseSchema = Initialize-InterserverApiUpdateTicketResponseSchema  -Success null `
 -Message null
```

- Convert the resource to JSON
```powershell
$UpdateTicketResponseSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

