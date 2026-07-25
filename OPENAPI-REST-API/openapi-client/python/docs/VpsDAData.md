# VpsDAData

DirectAdmin license options available for a VPS.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**free** | [**VpsDALicense**](VpsDALicense.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_da_data import VpsDAData

# TODO update the JSON string below
json = "{}"
# create an instance of VpsDAData from a JSON string
vps_da_data_instance = VpsDAData.from_json(json)
# print the JSON string representation of the object
print(VpsDAData.to_json())

# convert the object into a dict
vps_da_data_dict = vps_da_data_instance.to_dict()
# create an instance of VpsDAData from a dict
vps_da_data_from_dict = VpsDAData.from_dict(vps_da_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


