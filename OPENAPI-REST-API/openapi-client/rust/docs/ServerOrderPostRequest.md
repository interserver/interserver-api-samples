# ServerOrderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **i32** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**models::ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**memory** | **i32** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **i32** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **i32** | IP block configuration id from config_li.ips_li. | 
**os** | **i32** | Operating System configuration id from config_li.os_li. | 
**cp** | **i32** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **i32** | RAID configuration id from config_li.raid_li. | 
**region** | **i32** | Region id from the regions list. | 
**servername** | **String** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **String** | Root password for the server. | 
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | Option<**String**> | Optional free-form order comment. | [optional][default to ]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


