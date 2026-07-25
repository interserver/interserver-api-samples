# TicketDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ticketid** | **Int32** |  | [optional] 
**Ticketmaskid** | **String** |  | [optional] 
**Department** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Priority** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**CreatedOn** | **String** |  | [optional] 
**UpdatedOn** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TicketDetails = Initialize-InterserverApiTicketDetails  -Ticketid null `
 -Ticketmaskid null `
 -Department null `
 -Status null `
 -Priority null `
 -Subject null `
 -CreatedOn null `
 -UpdatedOn null
```

- Convert the resource to JSON
```powershell
$TicketDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

