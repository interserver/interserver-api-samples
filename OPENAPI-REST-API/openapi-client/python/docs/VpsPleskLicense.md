# VpsPleskLicense


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**sub_name** | **str** |  | [optional] 
**cost** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.vps_plesk_license import VpsPleskLicense

# TODO update the JSON string below
json = "{}"
# create an instance of VpsPleskLicense from a JSON string
vps_plesk_license_instance = VpsPleskLicense.from_json(json)
# print the JSON string representation of the object
print(VpsPleskLicense.to_json())

# convert the object into a dict
vps_plesk_license_dict = vps_plesk_license_instance.to_dict()
# create an instance of VpsPleskLicense from a dict
vps_plesk_license_from_dict = VpsPleskLicense.from_dict(vps_plesk_license_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


