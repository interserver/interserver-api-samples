# BackupLoginResponse

Login session response for backup storage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Indicates whether a login session was created. | [optional] 
**text** | **str** | Login URL or error text returned by the storage provider. | [optional] 

## Example

```python
from interserver_api_client.models.backup_login_response import BackupLoginResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BackupLoginResponse from a JSON string
backup_login_response_instance = BackupLoginResponse.from_json(json)
# print the JSON string representation of the object
print(BackupLoginResponse.to_json())

# convert the object into a dict
backup_login_response_dict = backup_login_response_instance.to_dict()
# create an instance of BackupLoginResponse from a dict
backup_login_response_from_dict = BackupLoginResponse.from_dict(backup_login_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


