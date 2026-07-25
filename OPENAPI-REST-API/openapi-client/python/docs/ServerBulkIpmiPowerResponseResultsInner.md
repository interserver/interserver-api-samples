# ServerBulkIpmiPowerResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Server ID this result corresponds to. | [optional] 
**asset** | **int** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**text** | **str** | IPMI power-status output for this server. | [optional] 
**error** | **str** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] 

## Example

```python
from interserver_api_client.models.server_bulk_ipmi_power_response_results_inner import ServerBulkIpmiPowerResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ServerBulkIpmiPowerResponseResultsInner from a JSON string
server_bulk_ipmi_power_response_results_inner_instance = ServerBulkIpmiPowerResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(ServerBulkIpmiPowerResponseResultsInner.to_json())

# convert the object into a dict
server_bulk_ipmi_power_response_results_inner_dict = server_bulk_ipmi_power_response_results_inner_instance.to_dict()
# create an instance of ServerBulkIpmiPowerResponseResultsInner from a dict
server_bulk_ipmi_power_response_results_inner_from_dict = ServerBulkIpmiPowerResponseResultsInner.from_dict(server_bulk_ipmi_power_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


