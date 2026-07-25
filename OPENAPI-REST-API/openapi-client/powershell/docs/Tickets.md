# Tickets
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ima** | **String** |  | 
**Custid** | **String** |  | 
**View** | **String** |  | 
**CurrentPage** | **Int32** |  | 
**Limit** | **Int32** |  | 
**Sortcol** | **Int32** |  | 
**Sortdir** | **Int32** |  | 
**RowsOffset** | **Int32** |  | 
**Tickets** | [**TicketsRow[]**](TicketsRow.md) |  | 
**Pages** | **Int32** |  | 
**RowsTotal** | **Int32** |  | 
**InboxCount** | **Int32** |  | 
**CountArray** | [**TicketsCountArray**](TicketsCountArray.md) |  | 
**ViewText** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Tickets = Initialize-InterserverApiTickets  -Ima null `
 -Custid null `
 -View null `
 -CurrentPage null `
 -Limit null `
 -Sortcol null `
 -Sortdir null `
 -RowsOffset null `
 -Tickets null `
 -Pages null `
 -RowsTotal null `
 -InboxCount null `
 -CountArray null `
 -ViewText null
```

- Convert the resource to JSON
```powershell
$Tickets | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

