# HomeTicketStatusView
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var4** | **String** | Status corresponding to view number 4. | [optional] 
**Var5** | **String** | Status corresponding to view number 5. | [optional] 
**Var6** | **String** | Status corresponding to view number 6. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeTicketStatusView = Initialize-InterserverApiHomeTicketStatusView  -Var4 Open `
 -Var5 On Hold `
 -Var6 Closed
```

- Convert the resource to JSON
```powershell
$HomeTicketStatusView | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

