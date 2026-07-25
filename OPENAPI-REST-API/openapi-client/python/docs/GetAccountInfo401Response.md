# GetAccountInfo401Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **int** |  | 
**message** | **str** |  | 

## Example

```python
from interserver_api_client.models.get_account_info401_response import GetAccountInfo401Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccountInfo401Response from a JSON string
get_account_info401_response_instance = GetAccountInfo401Response.from_json(json)
# print the JSON string representation of the object
print(GetAccountInfo401Response.to_json())

# convert the object into a dict
get_account_info401_response_dict = get_account_info401_response_instance.to_dict()
# create an instance of GetAccountInfo401Response from a dict
get_account_info401_response_from_dict = GetAccountInfo401Response.from_dict(get_account_info401_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


