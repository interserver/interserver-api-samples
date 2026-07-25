# ServerOrderPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cpu** | **int32** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | [default to null]
**Hd** | [***OneOfServerOrderPostRequestHd**](OneOfServerOrderPostRequestHd.md) | Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids. | [default to null]
**Memory** | **int32** | Memory configuration id from config_li.memory_li[cpu]. | [default to null]
**Bandwidth** | **int32** | Bandwidth configuration id from config_li.bandwidth_li. | [default to null]
**Ips** | **int32** | IP block configuration id from config_li.ips_li. | [default to null]
**Os** | **int32** | Operating System configuration id from config_li.os_li. | [default to null]
**Cp** | **int32** | Control Panel configuration id from config_li.cp_li. | [default to null]
**Raid** | **int32** | RAID configuration id from config_li.raid_li. | [default to null]
**Region** | **int32** | Region id from the regions list. | [default to null]
**Servername** | **string** | Server hostname. Must pass valid_hostname(). | [default to null]
**Rootpass** | **string** | Root password for the server. | [default to null]
**Tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**Comment** | **string** | Optional free-form order comment. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

