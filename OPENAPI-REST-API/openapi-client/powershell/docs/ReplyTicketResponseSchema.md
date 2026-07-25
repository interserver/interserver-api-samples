# ReplyTicketResponseSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**PostId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReplyTicketResponseSchema = Initialize-InterserverApiReplyTicketResponseSchema  -Success null `
 -PostId null
```

- Convert the resource to JSON
```powershell
$ReplyTicketResponseSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

