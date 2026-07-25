# ViewTicketResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Ticket** | [**TicketDetails**](TicketDetails.md) |  | 
**TicketCustomFields** | [**TicketCustomFieldDetails**](TicketCustomFieldDetails.md) |  | [optional] 
**TicketPosts** | [**TicketPostDetails**](TicketPostDetails.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ViewTicketResponse = Initialize-InterserverApiViewTicketResponse  -Success null `
 -Ticket null `
 -TicketCustomFields null `
 -TicketPosts null
```

- Convert the resource to JSON
```powershell
$ViewTicketResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

