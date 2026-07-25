# PasswordRequest

Request containing a password

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **str** |  | 

## Example

```python
from interserver_api_client.models.password_request import PasswordRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PasswordRequest from a JSON string
password_request_instance = PasswordRequest.from_json(json)
# print the JSON string representation of the object
print(PasswordRequest.to_json())

# convert the object into a dict
password_request_dict = password_request_instance.to_dict()
# create an instance of PasswordRequest from a dict
password_request_from_dict = PasswordRequest.from_dict(password_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


