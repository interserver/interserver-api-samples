# HomeServices

Users services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domains** | [**HomeServicesDomains**](HomeServicesDomains.md) |  | [optional] 
**webhosting** | [**HomeServicesWebhosting**](HomeServicesWebhosting.md) |  | [optional] 
**vps** | [**HomeServicesVps**](HomeServicesVps.md) |  | [optional] 
**licenses** | [**HomeServicesLicenses**](HomeServicesLicenses.md) |  | [optional] 
**servers** | [**HomeServicesServers**](HomeServicesServers.md) |  | [optional] 
**backups** | [**HomeServicesBackups**](HomeServicesBackups.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.home_services import HomeServices

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServices from a JSON string
home_services_instance = HomeServices.from_json(json)
# print the JSON string representation of the object
print(HomeServices.to_json())

# convert the object into a dict
home_services_dict = home_services_instance.to_dict()
# create an instance of HomeServices from a dict
home_services_from_dict = HomeServices.from_dict(home_services_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


