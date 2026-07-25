# ServerOrderPostRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **cpu** | **Integer** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | [default to null] |
| **hd** | [**ServerOrderPostRequest_hd**](ServerOrderPostRequest_hd.md) |  | [default to null] |
| **memory** | **Integer** | Memory configuration id from config_li.memory_li[cpu]. | [default to null] |
| **bandwidth** | **Integer** | Bandwidth configuration id from config_li.bandwidth_li. | [default to null] |
| **ips** | **Integer** | IP block configuration id from config_li.ips_li. | [default to null] |
| **os** | **Integer** | Operating System configuration id from config_li.os_li. | [default to null] |
| **cp** | **Integer** | Control Panel configuration id from config_li.cp_li. | [default to null] |
| **raid** | **Integer** | RAID configuration id from config_li.raid_li. | [default to null] |
| **region** | **Integer** | Region id from the regions list. | [default to null] |
| **servername** | **String** | Server hostname. Must pass valid_hostname(). | [default to null] |
| **rootpass** | **String** | Root password for the server. | [default to null] |
| **tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. | [default to null] |
| **comment** | **String** | Optional free-form order comment. | [optional] [default to ] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

