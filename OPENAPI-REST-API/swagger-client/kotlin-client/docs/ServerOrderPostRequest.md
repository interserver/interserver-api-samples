# ServerOrderPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | [**kotlin.Int**](.md) | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**OneOfServerOrderPostRequestHd**](OneOfServerOrderPostRequestHd.md) | Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids. | 
**memory** | [**kotlin.Int**](.md) | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | [**kotlin.Int**](.md) | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | [**kotlin.Int**](.md) | IP block configuration id from config_li.ips_li. | 
**os** | [**kotlin.Int**](.md) | Operating System configuration id from config_li.os_li. | 
**cp** | [**kotlin.Int**](.md) | Control Panel configuration id from config_li.cp_li. | 
**raid** | [**kotlin.Int**](.md) | RAID configuration id from config_li.raid_li. | 
**region** | [**kotlin.Int**](.md) | Region id from the regions list. | 
**servername** | [**kotlin.String**](.md) | Server hostname. Must pass valid_hostname(). | 
**rootpass** | [**kotlin.String**](.md) | Root password for the server. | 
**tos** | [**kotlin.Boolean**](.md) | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | [**kotlin.String**](.md) | Optional free-form order comment. |  [optional]
