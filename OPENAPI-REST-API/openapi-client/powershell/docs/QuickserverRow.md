# QuickserverRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QsId** | **String** | The id of the qs. | 
**QsName** | **String** | The name of the qs. | 
**Cost** | **String** | The cost of the qs. | 
**QsHostname** | **String** | The hostname of the qs. | 
**QsStatus** | **String** | The status of the qs. | 
**QsComment** | **String** | The comment of the qs. | 

## Examples

- Prepare the resource
```powershell
$QuickserverRow = Initialize-InterserverApiQuickserverRow  -QsId 19504 `
 -QsName Quickserver199 `
 -Cost 65.00 `
 -QsHostname qs19504 `
 -QsStatus canceled `
 -QsComment 
```

- Convert the resource to JSON
```powershell
$QuickserverRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

