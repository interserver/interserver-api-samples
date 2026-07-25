# ServerOrderIpsLi

IP options for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_9** | [**ServerOrderIP**](ServerOrderIP.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.server_order_ips_li import ServerOrderIpsLi

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderIpsLi from a JSON string
server_order_ips_li_instance = ServerOrderIpsLi.from_json(json)
# print the JSON string representation of the object
print(ServerOrderIpsLi.to_json())

# convert the object into a dict
server_order_ips_li_dict = server_order_ips_li_instance.to_dict()
# create an instance of ServerOrderIpsLi from a dict
server_order_ips_li_from_dict = ServerOrderIpsLi.from_dict(server_order_ips_li_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


