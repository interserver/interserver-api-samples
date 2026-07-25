# LoginErrorResponse

Error resposne during login indicating further action.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**var_field** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.login_error_response import LoginErrorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LoginErrorResponse from a JSON string
login_error_response_instance = LoginErrorResponse.from_json(json)
# print the JSON string representation of the object
print(LoginErrorResponse.to_json())

# convert the object into a dict
login_error_response_dict = login_error_response_instance.to_dict()
# create an instance of LoginErrorResponse from a dict
login_error_response_from_dict = LoginErrorResponse.from_dict(login_error_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


