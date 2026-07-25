# ServerOrderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **int** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. |
**hd** | [**\Interserver\\MyAdmin\Model\ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  |
**memory** | **int** | Memory configuration id from config_li.memory_li[cpu]. |
**bandwidth** | **int** | Bandwidth configuration id from config_li.bandwidth_li. |
**ips** | **int** | IP block configuration id from config_li.ips_li. |
**os** | **int** | Operating System configuration id from config_li.os_li. |
**cp** | **int** | Control Panel configuration id from config_li.cp_li. |
**raid** | **int** | RAID configuration id from config_li.raid_li. |
**region** | **int** | Region id from the regions list. |
**servername** | **string** | Server hostname. Must pass valid_hostname(). |
**rootpass** | **string** | Root password for the server. |
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. |
**comment** | **string** | Optional free-form order comment. | [optional] [default to '']

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
