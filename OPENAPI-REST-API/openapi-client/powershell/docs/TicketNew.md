# TicketNew
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | 
**Body** | **String** |  | 
**ServiceId** | **Int32** |  | [optional] 
**ServiceModule** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TicketNew = Initialize-InterserverApiTicketNew  -Subject null `
 -Body null `
 -ServiceId null `
 -ServiceModule null
```

- Convert the resource to JSON
```powershell
$TicketNew | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

