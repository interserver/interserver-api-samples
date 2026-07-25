# UpdateTicket
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**CustomerServerAccess** | **String** |  | [optional] 
**RootPassword** | **String** |  | [optional] 
**SudoUsername** | **String** |  | [optional] 
**SudoPassword** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateTicket = Initialize-InterserverApiUpdateTicket  -Ip null `
 -IpAddress null `
 -CustomerServerAccess null `
 -RootPassword null `
 -SudoUsername null `
 -SudoPassword null `
 -Port null
```

- Convert the resource to JSON
```powershell
$UpdateTicket | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

