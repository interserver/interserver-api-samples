# ServerRow

A result row from the `Servers` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **str** | The id of the server. | 
**account_lid** | **str** | The account lid of the server. | 
**server_hostname** | **str** | The hostname of the server. | 
**server_status** | **str** | The status of the server. | 

## Example

```python
from interserver_api_client.models.server_row import ServerRow

# TODO update the JSON string below
json = "{}"
# create an instance of ServerRow from a JSON string
server_row_instance = ServerRow.from_json(json)
# print the JSON string representation of the object
print(ServerRow.to_json())

# convert the object into a dict
server_row_dict = server_row_instance.to_dict()
# create an instance of ServerRow from a dict
server_row_from_dict = ServerRow.from_dict(server_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


