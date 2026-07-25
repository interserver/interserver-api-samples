# ServerOrderFieldLabel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the field label. | [optional] 
**Active** | **Int32** | Active status of the field label. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderFieldLabel = Initialize-InterserverApiServerOrderFieldLabel  -Name Bandwidth `
 -Active 1
```

- Convert the resource to JSON
```powershell
$ServerOrderFieldLabel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

