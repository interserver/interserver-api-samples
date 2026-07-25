# ServerIpmiLiveRequest

Request body to setup an IPMI Live connection.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset** | **int** | Asset ID | [optional] 
**ip** | **str** | Your IP Address you wish to connect to the IPMI system from. | 

## Example

```python
from interserver_api_client.models.server_ipmi_live_request import ServerIpmiLiveRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ServerIpmiLiveRequest from a JSON string
server_ipmi_live_request_instance = ServerIpmiLiveRequest.from_json(json)
# print the JSON string representation of the object
print(ServerIpmiLiveRequest.to_json())

# convert the object into a dict
server_ipmi_live_request_dict = server_ipmi_live_request_instance.to_dict()
# create an instance of ServerIpmiLiveRequest from a dict
server_ipmi_live_request_from_dict = ServerIpmiLiveRequest.from_dict(server_ipmi_live_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


