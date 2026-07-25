# VpsIPInfoRow


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | Description | [optional] 
**value** | **str** | Value | [optional] 

## Example

```python
from interserver_api_client.models.vps_ip_info_row import VpsIPInfoRow

# TODO update the JSON string below
json = "{}"
# create an instance of VpsIPInfoRow from a JSON string
vps_ip_info_row_instance = VpsIPInfoRow.from_json(json)
# print the JSON string representation of the object
print(VpsIPInfoRow.to_json())

# convert the object into a dict
vps_ip_info_row_dict = vps_ip_info_row_instance.to_dict()
# create an instance of VpsIPInfoRow from a dict
vps_ip_info_row_from_dict = VpsIPInfoRow.from_dict(vps_ip_info_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


