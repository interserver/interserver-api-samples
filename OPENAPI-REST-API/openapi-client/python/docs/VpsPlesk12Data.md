# VpsPlesk12Data


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin** | [**VpsPleskLicense**](VpsPleskLicense.md) |  | [optional] 
**pro** | [**VpsPleskLicense**](VpsPleskLicense.md) |  | [optional] 
**host** | [**VpsPleskLicense**](VpsPleskLicense.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_plesk12_data import VpsPlesk12Data

# TODO update the JSON string below
json = "{}"
# create an instance of VpsPlesk12Data from a JSON string
vps_plesk12_data_instance = VpsPlesk12Data.from_json(json)
# print the JSON string representation of the object
print(VpsPlesk12Data.to_json())

# convert the object into a dict
vps_plesk12_data_dict = vps_plesk12_data_instance.to_dict()
# create an instance of VpsPlesk12Data from a dict
vps_plesk12_data_from_dict = VpsPlesk12Data.from_dict(vps_plesk12_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


