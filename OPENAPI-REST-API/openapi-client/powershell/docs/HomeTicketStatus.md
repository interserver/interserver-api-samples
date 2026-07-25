# HomeTicketStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Open** | **Int32** | Count of open tickets. | [optional] 
**OnHold** | **Int32** | Count of tickets on hold. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeTicketStatus = Initialize-InterserverApiHomeTicketStatus  -Open 4 `
 -OnHold 5
```

- Convert the resource to JSON
```powershell
$HomeTicketStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

