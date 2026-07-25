# ServerOrderFormValues

Form values for the server order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memory** | **int** | Memory value for the server order. | [optional] 
**bandwidth** | **str** | Bandwidth value for the server order. | [optional] 
**ips** | **str** | IPs value for the server order. | [optional] 
**os** | **str** | Operating System value for the server order. | [optional] 
**cp** | **int** | Control Panel value for the server order. | [optional] 
**raid** | **str** | RAID value for the server order. | [optional] 
**hd** | **str** | Hard Drives value for the server order. | [optional] 

## Example

```python
from interserver_api_client.models.server_order_form_values import ServerOrderFormValues

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOrderFormValues from a JSON string
server_order_form_values_instance = ServerOrderFormValues.from_json(json)
# print the JSON string representation of the object
print(ServerOrderFormValues.to_json())

# convert the object into a dict
server_order_form_values_dict = server_order_form_values_instance.to_dict()
# create an instance of ServerOrderFormValues from a dict
server_order_form_values_from_dict = ServerOrderFormValues.from_dict(server_order_form_values_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


