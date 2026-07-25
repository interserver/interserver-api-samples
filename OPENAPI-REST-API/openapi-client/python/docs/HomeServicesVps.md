# HomeServicesVps


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**HomeServicesVpsLinks**](HomeServicesVpsLinks.md) |  | [optional] 
**count** | **int** | Number of VPS services. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_vps import HomeServicesVps

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesVps from a JSON string
home_services_vps_instance = HomeServicesVps.from_json(json)
# print the JSON string representation of the object
print(HomeServicesVps.to_json())

# convert the object into a dict
home_services_vps_dict = home_services_vps_instance.to_dict()
# create an instance of HomeServicesVps from a dict
home_services_vps_from_dict = HomeServicesVps.from_dict(home_services_vps_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


