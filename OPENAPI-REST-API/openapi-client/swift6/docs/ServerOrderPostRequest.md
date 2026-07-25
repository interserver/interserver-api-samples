# ServerOrderPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **Int** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**memory** | **Int** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **Int** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **Int** | IP block configuration id from config_li.ips_li. | 
**os** | **Int** | Operating System configuration id from config_li.os_li. | 
**cp** | **Int** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **Int** | RAID configuration id from config_li.raid_li. | 
**region** | **Int** | Region id from the regions list. | 
**servername** | **String** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **String** | Root password for the server. | 
**tos** | **Bool** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **String** | Optional free-form order comment. | [optional] [default to ""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


