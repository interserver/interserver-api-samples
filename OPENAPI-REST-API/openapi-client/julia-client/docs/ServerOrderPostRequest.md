# ServerOrderPostRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`cpu`** | **`Int64`** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | [default to nothing]
**`hd`** | [**`*ServerOrderPostRequestHd`**](ServerOrderPostRequestHd.md) |  | [default to nothing]
**`memory`** | **`Int64`** | Memory configuration id from config_li.memory_li[cpu]. | [default to nothing]
**`bandwidth`** | **`Int64`** | Bandwidth configuration id from config_li.bandwidth_li. | [default to nothing]
**`ips`** | **`Int64`** | IP block configuration id from config_li.ips_li. | [default to nothing]
**`os`** | **`Int64`** | Operating System configuration id from config_li.os_li. | [default to nothing]
**`cp`** | **`Int64`** | Control Panel configuration id from config_li.cp_li. | [default to nothing]
**`raid`** | **`Int64`** | RAID configuration id from config_li.raid_li. | [default to nothing]
**`region`** | **`Int64`** | Region id from the regions list. | [default to nothing]
**`servername`** | **`String`** | Server hostname. Must pass valid_hostname(). | [default to nothing]
**`rootpass`** | **`String`** | Root password for the server. | [default to nothing]
**`tos`** | **`Bool`** | Terms-of-service acceptance. Must be true to place the order. | [default to nothing]
**`comment`** | **`String`** | Optional free-form order comment. | [optional] [default to ""]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


