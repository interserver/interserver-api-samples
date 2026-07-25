# VpsServiceExtra


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**spice** | **int** | Spice | [optional] 
**snapshots** | [**List[VpsSnapshot]**](VpsSnapshot.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_service_extra import VpsServiceExtra

# TODO update the JSON string below
json = "{}"
# create an instance of VpsServiceExtra from a JSON string
vps_service_extra_instance = VpsServiceExtra.from_json(json)
# print the JSON string representation of the object
print(VpsServiceExtra.to_json())

# convert the object into a dict
vps_service_extra_dict = vps_service_extra_instance.to_dict()
# create an instance of VpsServiceExtra from a dict
vps_service_extra_from_dict = VpsServiceExtra.from_dict(vps_service_extra_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


