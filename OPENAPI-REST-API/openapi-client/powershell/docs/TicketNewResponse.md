# TicketNewResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** |  | 
**Success** | **Boolean** |  | 
**TicketId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TicketNewResponse = Initialize-InterserverApiTicketNewResponse  -Text null `
 -Success null `
 -TicketId null
```

- Convert the resource to JSON
```powershell
$TicketNewResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

