# ServerIpmiPowerRequest

IPMI Power command for servers

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **str** | The power action to send to the ipmi controller. | 
**asset** | **int** | The Asset ID | [optional] 

## Example

```python
from interserver_api_client.models.server_ipmi_power_request import ServerIpmiPowerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ServerIpmiPowerRequest from a JSON string
server_ipmi_power_request_instance = ServerIpmiPowerRequest.from_json(json)
# print the JSON string representation of the object
print(ServerIpmiPowerRequest.to_json())

# convert the object into a dict
server_ipmi_power_request_dict = server_ipmi_power_request_instance.to_dict()
# create an instance of ServerIpmiPowerRequest from a dict
server_ipmi_power_request_from_dict = ServerIpmiPowerRequest.from_dict(server_ipmi_power_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


