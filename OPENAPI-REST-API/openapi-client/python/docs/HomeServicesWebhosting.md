# HomeServicesWebhosting


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**HomeServicesWebhostingLinks**](HomeServicesWebhostingLinks.md) |  | [optional] 
**count** | **int** | Number of web hosting services. | [optional] 

## Example

```python
from interserver_api_client.models.home_services_webhosting import HomeServicesWebhosting

# TODO update the JSON string below
json = "{}"
# create an instance of HomeServicesWebhosting from a JSON string
home_services_webhosting_instance = HomeServicesWebhosting.from_json(json)
# print the JSON string representation of the object
print(HomeServicesWebhosting.to_json())

# convert the object into a dict
home_services_webhosting_dict = home_services_webhosting_instance.to_dict()
# create an instance of HomeServicesWebhosting from a dict
home_services_webhosting_from_dict = HomeServicesWebhosting.from_dict(home_services_webhosting_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


