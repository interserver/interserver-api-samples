# ServerOrderPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cpu** | **Int32** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**Hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**Memory** | **Int32** | Memory configuration id from config_li.memory_li[cpu]. | 
**Bandwidth** | **Int32** | Bandwidth configuration id from config_li.bandwidth_li. | 
**Ips** | **Int32** | IP block configuration id from config_li.ips_li. | 
**Os** | **Int32** | Operating System configuration id from config_li.os_li. | 
**Cp** | **Int32** | Control Panel configuration id from config_li.cp_li. | 
**Raid** | **Int32** | RAID configuration id from config_li.raid_li. | 
**Region** | **Int32** | Region id from the regions list. | 
**Servername** | **String** | Server hostname. Must pass valid_hostname(). | 
**Rootpass** | **String** | Root password for the server. | 
**Tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**Comment** | **String** | Optional free-form order comment. | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$ServerOrderPostRequest = Initialize-InterserverApiServerOrderPostRequest  -Cpu null `
 -Hd null `
 -Memory null `
 -Bandwidth null `
 -Ips null `
 -Os null `
 -Cp null `
 -Raid null `
 -Region null `
 -Servername null `
 -Rootpass null `
 -Tos null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$ServerOrderPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

