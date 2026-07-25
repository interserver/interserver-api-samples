# SERVER_ORDER_POST_REQUEST

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **INTEGER_32** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | [default to null]
**hd** | [**SERVER_ORDER_POST_REQUEST_HD**](ServerOrderPostRequest_hd.md) |  | [default to null]
**memory** | **INTEGER_32** | Memory configuration id from config_li.memory_li[cpu]. | [default to null]
**bandwidth** | **INTEGER_32** | Bandwidth configuration id from config_li.bandwidth_li. | [default to null]
**ips** | **INTEGER_32** | IP block configuration id from config_li.ips_li. | [default to null]
**os** | **INTEGER_32** | Operating System configuration id from config_li.os_li. | [default to null]
**cp** | **INTEGER_32** | Control Panel configuration id from config_li.cp_li. | [default to null]
**raid** | **INTEGER_32** | RAID configuration id from config_li.raid_li. | [default to null]
**region** | **INTEGER_32** | Region id from the regions list. | [default to null]
**servername** | [**STRING_32**](STRING_32.md) | Server hostname. Must pass valid_hostname(). | [default to null]
**rootpass** | [**STRING_32**](STRING_32.md) | Root password for the server. | [default to null]
**tos** | **BOOLEAN** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**comment** | [**STRING_32**](STRING_32.md) | Optional free-form order comment. | [optional] [default to ]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


