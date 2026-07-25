# swagger.model.ServerOrderPostRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **int** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | [default to null]
**hd** | [**OneOfServerOrderPostRequestHd**](OneOfServerOrderPostRequestHd.md) | Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids. | [default to null]
**memory** | **int** | Memory configuration id from config_li.memory_li[cpu]. | [default to null]
**bandwidth** | **int** | Bandwidth configuration id from config_li.bandwidth_li. | [default to null]
**ips** | **int** | IP block configuration id from config_li.ips_li. | [default to null]
**os** | **int** | Operating System configuration id from config_li.os_li. | [default to null]
**cp** | **int** | Control Panel configuration id from config_li.cp_li. | [default to null]
**raid** | **int** | RAID configuration id from config_li.raid_li. | [default to null]
**region** | **int** | Region id from the regions list. | [default to null]
**servername** | **String** | Server hostname. Must pass valid_hostname(). | [default to null]
**rootpass** | **String** | Root password for the server. | [default to null]
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | [default to null]
**comment** | **String** | Optional free-form order comment. | [optional] [default to &quot;&quot;]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

