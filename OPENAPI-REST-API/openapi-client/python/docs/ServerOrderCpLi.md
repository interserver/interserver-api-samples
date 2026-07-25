# ServerOrderCpLi

Control Panel options for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_9** | [**ServerOrderControlPanel**](ServerOrderControlPanel.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.server_order_cp_li import ServerOrderCpLi

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderCpLi from a JSON string
server_order_cp_li_instance = ServerOrderCpLi.from_json(json)
# print the JSON string representation of the object
print(ServerOrderCpLi.to_json())

# convert the object into a dict
server_order_cp_li_dict = server_order_cp_li_instance.to_dict()
# create an instance of ServerOrderCpLi from a dict
server_order_cp_li_from_dict = ServerOrderCpLi.from_dict(server_order_cp_li_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


