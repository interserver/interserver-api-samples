# ServerIpmiLiveInfo

Information about the IPMI connection.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** |  | [optional] 
**public_ip** | **str** |  | [optional] 
**allowed_ip** | **str** |  | [optional] 
**client_username** | **str** |  | [optional] 
**client_password** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.server_ipmi_live_info import ServerIpmiLiveInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ServerIpmiLiveInfo from a JSON string
server_ipmi_live_info_instance = ServerIpmiLiveInfo.from_json(json)
# print the JSON string representation of the object
print(ServerIpmiLiveInfo.to_json())

# convert the object into a dict
server_ipmi_live_info_dict = server_ipmi_live_info_instance.to_dict()
# create an instance of ServerIpmiLiveInfo from a dict
server_ipmi_live_info_from_dict = ServerIpmiLiveInfo.from_dict(server_ipmi_live_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


