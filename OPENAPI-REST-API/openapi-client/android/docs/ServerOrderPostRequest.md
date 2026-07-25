

# ServerOrderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **Integer** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**memory** | **Integer** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **Integer** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **Integer** | IP block configuration id from config_li.ips_li. | 
**os** | **Integer** | Operating System configuration id from config_li.os_li. | 
**cp** | **Integer** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **Integer** | RAID configuration id from config_li.raid_li. | 
**region** | **Integer** | Region id from the regions list. | 
**servername** | **String** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **String** | Root password for the server. | 
**tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **String** | Optional free-form order comment. |  [optional]




