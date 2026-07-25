# ServerBulkIpmiPowerResponse

Per-server IPMI power-status results for a bulk lookup.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ServerBulkIpmiPowerResponseResultsInner]**](ServerBulkIpmiPowerResponseResultsInner.md) |  | 

## Example

```python
from interserver_api_client.models.server_bulk_ipmi_power_response import ServerBulkIpmiPowerResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ServerBulkIpmiPowerResponse from a JSON string
server_bulk_ipmi_power_response_instance = ServerBulkIpmiPowerResponse.from_json(json)
# print the JSON string representation of the object
print(ServerBulkIpmiPowerResponse.to_json())

# convert the object into a dict
server_bulk_ipmi_power_response_dict = server_bulk_ipmi_power_response_instance.to_dict()
# create an instance of ServerBulkIpmiPowerResponse from a dict
server_bulk_ipmi_power_response_from_dict = ServerBulkIpmiPowerResponse.from_dict(server_bulk_ipmi_power_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


