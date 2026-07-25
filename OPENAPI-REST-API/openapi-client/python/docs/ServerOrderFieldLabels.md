# ServerOrderFieldLabels

Field labels for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Bandwidth field label. | [optional] 
**ips** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | IPs field label. | [optional] 
**os** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Operating System field label. | [optional] 
**cp** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Control Panel field label. | [optional] 
**raid** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | RAID field label. | [optional] 
**memory** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Memory field label. | [optional] 
**hd** | [**ServerOrderFieldLabel**](ServerOrderFieldLabel.md) | Hard Drives field label | [optional] 

## Example

```python
from interserver_api_client.models.server_order_field_labels import ServerOrderFieldLabels

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderFieldLabels from a JSON string
server_order_field_labels_instance = ServerOrderFieldLabels.from_json(json)
# print the JSON string representation of the object
print(ServerOrderFieldLabels.to_json())

# convert the object into a dict
server_order_field_labels_dict = server_order_field_labels_instance.to_dict()
# create an instance of ServerOrderFieldLabels from a dict
server_order_field_labels_from_dict = ServerOrderFieldLabels.from_dict(server_order_field_labels_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


