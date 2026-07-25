# ISAServerOrderPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **NSNumber*** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**ISAServerOrderPostRequestHd***](ISAServerOrderPostRequestHd.md) |  | 
**memory** | **NSNumber*** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **NSNumber*** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **NSNumber*** | IP block configuration id from config_li.ips_li. | 
**os** | **NSNumber*** | Operating System configuration id from config_li.os_li. | 
**cp** | **NSNumber*** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **NSNumber*** | RAID configuration id from config_li.raid_li. | 
**region** | **NSNumber*** | Region id from the regions list. | 
**servername** | **NSString*** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **NSString*** | Root password for the server. | 
**tos** | **NSNumber*** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **NSString*** | Optional free-form order comment. | [optional] [default to @""]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


