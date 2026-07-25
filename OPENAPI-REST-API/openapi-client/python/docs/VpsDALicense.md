# VpsDALicense

A DirectAdmin license tier option.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | License tier name. | [optional] 
**sub_name** | **str** | License tier sub-name. | [optional] 
**cost** | **int** | Monthly cost in cents. | [optional] 
**img_disabled** | **str** | Image path for the disabled state icon. | [optional] 
**img_active** | **str** | Image path for the active state icon. | [optional] 

## Example

```python
from interserver_api_client.models.vps_da_license import VpsDALicense

# TODO update the JSON string below
json = "{}"
# create an instance of VpsDALicense from a JSON string
vps_da_license_instance = VpsDALicense.from_json(json)
# print the JSON string representation of the object
print(VpsDALicense.to_json())

# convert the object into a dict
vps_da_license_dict = vps_da_license_instance.to_dict()
# create an instance of VpsDALicense from a dict
vps_da_license_from_dict = VpsDALicense.from_dict(vps_da_license_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


