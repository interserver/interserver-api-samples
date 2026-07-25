# VpsCPData

Control panel license options available for a VPS.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Control panel name (e.g., cPanel). | [optional] 
**cost** | **int** | Monthly cost in cents for the control panel license. | [optional] 

## Example

```python
from interserver_api_client.models.vps_cp_data import VpsCPData

# TODO update the JSON string below
json = "{}"
# create an instance of VpsCPData from a JSON string
vps_cp_data_instance = VpsCPData.from_json(json)
# print the JSON string representation of the object
print(VpsCPData.to_json())

# convert the object into a dict
vps_cp_data_dict = vps_cp_data_instance.to_dict()
# create an instance of VpsCPData from a dict
vps_cp_data_from_dict = VpsCPData.from_dict(vps_cp_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


