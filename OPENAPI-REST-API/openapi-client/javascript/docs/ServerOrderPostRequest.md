# InterserverApiClient.ServerOrderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **Number** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**memory** | **Number** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **Number** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **Number** | IP block configuration id from config_li.ips_li. | 
**os** | **Number** | Operating System configuration id from config_li.os_li. | 
**cp** | **Number** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **Number** | RAID configuration id from config_li.raid_li. | 
**region** | **Number** | Region id from the regions list. | 
**servername** | **String** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **String** | Root password for the server. | 
**tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **String** | Optional free-form order comment. | [optional] [default to &#39;&#39;]


