# ServersBuyNowError

Error response when a buy-it-now server order fails validation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Always false for error responses. | [optional] 
**text** | **str** | Human-readable error summary. | [optional] 
**errors** | **List[str]** | List of specific validation error messages. | [optional] 

## Example

```python
from interserver_api_client.models.servers_buy_now_error import ServersBuyNowError

# TODO update the JSON string below
json = "{}"
# create an instance of ServersBuyNowError from a JSON string
servers_buy_now_error_instance = ServersBuyNowError.from_json(json)
# print the JSON string representation of the object
print(ServersBuyNowError.to_json())

# convert the object into a dict
servers_buy_now_error_dict = servers_buy_now_error_instance.to_dict()
# create an instance of ServersBuyNowError from a dict
servers_buy_now_error_from_dict = ServersBuyNowError.from_dict(servers_buy_now_error_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


