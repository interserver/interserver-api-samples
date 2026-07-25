# HomeDetails

Users details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modules** | [**HomeDetailsModules**](HomeDetailsModules.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.home_details import HomeDetails

# TODO update the JSON string below
json = "{}"
# create an instance of HomeDetails from a JSON string
home_details_instance = HomeDetails.from_json(json)
# print the JSON string representation of the object
print(HomeDetails.to_json())

# convert the object into a dict
home_details_dict = home_details_instance.to_dict()
# create an instance of HomeDetails from a dict
home_details_from_dict = HomeDetails.from_dict(home_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


