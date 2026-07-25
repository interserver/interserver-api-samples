# interserverapi::ServerOrderPostRequest

Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **integer** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequest_hd.md) |  | 
**memory** | **integer** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **integer** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **integer** | IP block configuration id from config_li.ips_li. | 
**os** | **integer** | Operating System configuration id from config_li.os_li. | 
**cp** | **integer** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **integer** | RAID configuration id from config_li.raid_li. | 
**region** | **integer** | Region id from the regions list. | 
**servername** | **character** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **character** | Root password for the server. | 
**tos** | **character** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **character** | Optional free-form order comment. | [optional] [default to &quot;&quot;] 


