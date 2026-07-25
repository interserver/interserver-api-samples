# TicketCustomFieldDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomerServerAccess** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**RootPassword** | **String** |  | [optional] 
**SudoUser** | **String** |  | [optional] 
**SudoPassword** | **Int32** |  | [optional] 
**Port** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TicketCustomFieldDetails = Initialize-InterserverApiTicketCustomFieldDetails  -CustomerServerAccess null `
 -IpAddress null `
 -RootPassword null `
 -SudoUser null `
 -SudoPassword null `
 -Port null
```

- Convert the resource to JSON
```powershell
$TicketCustomFieldDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

