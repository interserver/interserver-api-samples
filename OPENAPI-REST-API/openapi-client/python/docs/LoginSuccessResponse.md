# LoginSuccessResponse

The response from a successful login.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**session_id** | **str** |  | [optional] 
**account_id** | **int** |  | [optional] 
**account_lid** | **str** |  | [optional] 
**ima** | **str** |  | [optional] 
**gravatar** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.login_success_response import LoginSuccessResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSuccessResponse from a JSON string
login_success_response_instance = LoginSuccessResponse.from_json(json)
# print the JSON string representation of the object
print(LoginSuccessResponse.to_json())

# convert the object into a dict
login_success_response_dict = login_success_response_instance.to_dict()
# create an instance of LoginSuccessResponse from a dict
login_success_response_from_dict = LoginSuccessResponse.from_dict(login_success_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


