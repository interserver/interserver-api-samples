# QuickserverIpInfo

IP address information table for a QuickServer service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Table title | [optional] 
**rows** | [**List[QuickserverIpTableRow]**](QuickserverIpTableRow.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_ip_info import QuickserverIpInfo

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverIpInfo from a JSON string
quickserver_ip_info_instance = QuickserverIpInfo.from_json(json)
# print the JSON string representation of the object
print(QuickserverIpInfo.to_json())

# convert the object into a dict
quickserver_ip_info_dict = quickserver_ip_info_instance.to_dict()
# create an instance of QuickserverIpInfo from a dict
quickserver_ip_info_from_dict = QuickserverIpInfo.from_dict(quickserver_ip_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


