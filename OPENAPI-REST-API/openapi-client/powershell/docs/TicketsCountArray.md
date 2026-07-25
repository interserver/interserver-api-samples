# TicketsCountArray
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Open** | **Int32** |  | [optional] 
**OnHold** | **Int32** |  | [optional] 
**Closed** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TicketsCountArray = Initialize-InterserverApiTicketsCountArray  -Open null `
 -OnHold null `
 -Closed null
```

- Convert the resource to JSON
```powershell
$TicketsCountArray | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

