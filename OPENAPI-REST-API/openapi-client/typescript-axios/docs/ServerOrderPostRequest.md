# ServerOrderPostRequest

Request body to place a custom dedicated server order. All ids come from getNewServer\'s config_li / regions.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **number** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | [default to undefined]
**hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | [default to undefined]
**memory** | **number** | Memory configuration id from config_li.memory_li[cpu]. | [default to undefined]
**bandwidth** | **number** | Bandwidth configuration id from config_li.bandwidth_li. | [default to undefined]
**ips** | **number** | IP block configuration id from config_li.ips_li. | [default to undefined]
**os** | **number** | Operating System configuration id from config_li.os_li. | [default to undefined]
**cp** | **number** | Control Panel configuration id from config_li.cp_li. | [default to undefined]
**raid** | **number** | RAID configuration id from config_li.raid_li. | [default to undefined]
**region** | **number** | Region id from the regions list. | [default to undefined]
**servername** | **string** | Server hostname. Must pass valid_hostname(). | [default to undefined]
**rootpass** | **string** | Root password for the server. | [default to undefined]
**tos** | **boolean** | Terms-of-service acceptance. Must be true to place the order. | [default to undefined]
**comment** | **string** | Optional free-form order comment. | [optional] [default to '']

## Example

```typescript
import { ServerOrderPostRequest } from '@interserver/myadmin-client';

const instance: ServerOrderPostRequest = {
    cpu,
    hd,
    memory,
    bandwidth,
    ips,
    os,
    cp,
    raid,
    region,
    servername,
    rootpass,
    tos,
    comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
