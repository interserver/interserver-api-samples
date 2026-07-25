# VpsTemplatesList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Templates** | [**VpsTemplateRow[]**](VpsTemplateRow.md) | A listing of the templates. | 

## Examples

- Prepare the resource
```powershell
$VpsTemplatesList = Initialize-InterserverApiVpsTemplatesList  -Templates null
```

- Convert the resource to JSON
```powershell
$VpsTemplatesList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

