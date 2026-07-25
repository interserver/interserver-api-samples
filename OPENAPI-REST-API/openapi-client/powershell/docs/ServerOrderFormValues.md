# ServerOrderFormValues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Memory** | **Int32** | Memory value for the server order. | [optional] 
**Bandwidth** | **String** | Bandwidth value for the server order. | [optional] 
**Ips** | **String** | IPs value for the server order. | [optional] 
**Os** | **String** | Operating System value for the server order. | [optional] 
**Cp** | **Int32** | Control Panel value for the server order. | [optional] 
**Raid** | **String** | RAID value for the server order. | [optional] 
**Hd** | **String** | Hard Drives value for the server order. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderFormValues = Initialize-InterserverApiServerOrderFormValues  -Memory 22 `
 -Bandwidth 3 `
 -Ips 9 `
 -Os 5 `
 -Cp 5 `
 -Raid 0 `
 -Hd 16
```

- Convert the resource to JSON
```powershell
$ServerOrderFormValues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

