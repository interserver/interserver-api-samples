# QuickserverOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QsId** | **String** | Quickserver ID. | [optional] 
**ServerDetails** | [**QuickserverOrderServerDetails**](QuickserverOrderServerDetails.md) |  | [optional] 
**Templates** | [**QuickserverOrderTemplates**](QuickserverOrderTemplates.md) |  | [optional] 
**Version** | [**QuickserverOrderVersion**](QuickserverOrderVersion.md) |  | [optional] 
**DistroSel** | [**QuickserverOrderDistroSel**](QuickserverOrderDistroSel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverOrder = Initialize-InterserverApiQuickserverOrder  -QsId 221 `
 -ServerDetails null `
 -Templates null `
 -Version null `
 -DistroSel null
```

- Convert the resource to JSON
```powershell
$QuickserverOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

