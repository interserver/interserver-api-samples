# ServerOrderPostRequest

Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **int** | CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. | 
**hd** | [**ServerOrderPostRequestHd**](ServerOrderPostRequestHd.md) |  | 
**memory** | **int** | Memory configuration id from config_li.memory_li[cpu]. | 
**bandwidth** | **int** | Bandwidth configuration id from config_li.bandwidth_li. | 
**ips** | **int** | IP block configuration id from config_li.ips_li. | 
**os** | **int** | Operating System configuration id from config_li.os_li. | 
**cp** | **int** | Control Panel configuration id from config_li.cp_li. | 
**raid** | **int** | RAID configuration id from config_li.raid_li. | 
**region** | **int** | Region id from the regions list. | 
**servername** | **str** | Server hostname. Must pass valid_hostname(). | 
**rootpass** | **str** | Root password for the server. | 
**tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**comment** | **str** | Optional free-form order comment. | [optional] [default to '']

## Example

```python
from interserver_api_client.models.server_order_post_request import ServerOrderPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderPostRequest from a JSON string
server_order_post_request_instance = ServerOrderPostRequest.from_json(json)
# print the JSON string representation of the object
print(ServerOrderPostRequest.to_json())

# convert the object into a dict
server_order_post_request_dict = server_order_post_request_instance.to_dict()
# create an instance of ServerOrderPostRequest from a dict
server_order_post_request_from_dict = ServerOrderPostRequest.from_dict(server_order_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


