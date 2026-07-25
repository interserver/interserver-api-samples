# TicketNewResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TicketId** | **Int32** |  | [optional] 
**Text** | **String** |  | 
**Success** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$TicketNewResponse = Initialize-InterserverApiTicketNewResponse  -TicketId null `
 -Text null `
 -Success null
```

- Convert the resource to JSON
```powershell
$TicketNewResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

