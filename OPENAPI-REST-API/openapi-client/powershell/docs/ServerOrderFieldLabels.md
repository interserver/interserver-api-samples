# ServerOrderFieldLabels
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bandwidth** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Bandwidth field label. | [optional] 
**Ips** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | IPs field label. | [optional] 
**Os** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Operating System field label. | [optional] 
**Cp** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Control Panel field label. | [optional] 
**Raid** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | RAID field label. | [optional] 
**Memory** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Memory field label. | [optional] 
**Hd** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Hard Drives field label | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderFieldLabels = Initialize-InterserverApiServerOrderFieldLabels  -Bandwidth null `
 -Ips null `
 -Os null `
 -Cp null `
 -Raid null `
 -Memory null `
 -Hd null
```

- Convert the resource to JSON
```powershell
$ServerOrderFieldLabels | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

