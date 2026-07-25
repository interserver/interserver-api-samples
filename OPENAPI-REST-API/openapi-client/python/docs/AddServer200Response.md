# AddServer200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** | Status message. | [optional] 
**invoice** | **int** | Invoice ID for payment. | [optional] 
**order** | **int** | Server order ID. | [optional] 

## Example

```python
from interserver_api_client.models.add_server200_response import AddServer200Response

# TODO update the JSON string below
json = "{}"
# create an instance of AddServer200Response from a JSON string
add_server200_response_instance = AddServer200Response.from_json(json)
# print the JSON string representation of the object
print(AddServer200Response.to_json())

# convert the object into a dict
add_server200_response_dict = add_server200_response_instance.to_dict()
# create an instance of AddServer200Response from a dict
add_server200_response_from_dict = AddServer200Response.from_dict(add_server200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


