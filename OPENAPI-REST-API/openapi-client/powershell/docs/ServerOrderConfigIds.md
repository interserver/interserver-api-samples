# ServerOrderConfigIds
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Memory** | **Int32** | Memory configuration ID for the server order. | [optional] 
**Bandwidth** | **String** | Bandwidth configuration ID for the server order. | [optional] 
**Ips** | **String** | IPs configuration ID for the server order. | [optional] 
**Os** | **String** | Operating System configuration ID for the server order. | [optional] 
**Cp** | **Int32** | Control Panel configuration ID for the server order. | [optional] 
**Raid** | **String** | RAID configuration ID for the server order. | [optional] 
**Hd** | **String** | Hard Drives configuration ID for the server order. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderConfigIds = Initialize-InterserverApiServerOrderConfigIds  -Memory 22 `
 -Bandwidth 3 `
 -Ips 9 `
 -Os 5 `
 -Cp 5 `
 -Raid 0 `
 -Hd 16
```

- Convert the resource to JSON
```powershell
$ServerOrderConfigIds | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

