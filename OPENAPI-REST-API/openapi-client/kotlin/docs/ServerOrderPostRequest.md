
# ServerOrderPostRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **cpu** | **kotlin.Int** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. |  |
| **hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  |  |
| **memory** | **kotlin.Int** | Memory configuration id from config_li.memory_li[cpu]. |  |
| **bandwidth** | **kotlin.Int** | Bandwidth configuration id from config_li.bandwidth_li. |  |
| **ips** | **kotlin.Int** | IP block configuration id from config_li.ips_li. |  |
| **os** | **kotlin.Int** | Operating System configuration id from config_li.os_li. |  |
| **cp** | **kotlin.Int** | Control Panel configuration id from config_li.cp_li. |  |
| **raid** | **kotlin.Int** | RAID configuration id from config_li.raid_li. |  |
| **region** | **kotlin.Int** | Region id from the regions list. |  |
| **servername** | **kotlin.String** | Server hostname. Must pass valid_hostname(). |  |
| **rootpass** | **kotlin.String** | Root password for the server. |  |
| **tos** | **kotlin.Boolean** | Terms-of-service acceptance. Must be true to place the order. |  |
| **comment** | **kotlin.String** | Optional free-form order comment. |  [optional] |



