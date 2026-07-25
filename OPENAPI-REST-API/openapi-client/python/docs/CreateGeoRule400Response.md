# CreateGeoRule400Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 
**errors** | **List[str]** |  | [optional] 

## Example

```python
from interserver_api_client.models.create_geo_rule400_response import CreateGeoRule400Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateGeoRule400Response from a JSON string
create_geo_rule400_response_instance = CreateGeoRule400Response.from_json(json)
# print the JSON string representation of the object
print(CreateGeoRule400Response.to_json())

# convert the object into a dict
create_geo_rule400_response_dict = create_geo_rule400_response_instance.to_dict()
# create an instance of CreateGeoRule400Response from a dict
create_geo_rule400_response_from_dict = CreateGeoRule400Response.from_dict(create_geo_rule400_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


