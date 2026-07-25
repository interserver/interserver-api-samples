# ServerOrderFieldLabel

A display label for a field in the server order form.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the field label. | [optional] 
**active** | **int** | Active status of the field label. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_field_label import ServerOrderFieldLabel

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderFieldLabel from a JSON string
server_order_field_label_instance = ServerOrderFieldLabel.from_json(json)
# print the JSON string representation of the object
print(ServerOrderFieldLabel.to_json())

# convert the object into a dict
server_order_field_label_dict = server_order_field_label_instance.to_dict()
# create an instance of ServerOrderFieldLabel from a dict
server_order_field_label_from_dict = ServerOrderFieldLabel.from_dict(server_order_field_label_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


