# QuickserverOrderServerDetails381


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **str** | CPU details of the server. | [optional] 
**ram** | **str** | RAM capacity of the server. | [optional] 
**hd** | **str** | Hard disk capacity of the server. | [optional] 
**cores** | **int** | Number of CPU cores. | [optional] 
**cost** | **str** | Cost of the server. | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_order_server_details381 import QuickserverOrderServerDetails381

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverOrderServerDetails381 from a JSON string
quickserver_order_server_details381_instance = QuickserverOrderServerDetails381.from_json(json)
# print the JSON string representation of the object
print(QuickserverOrderServerDetails381.to_json())

# convert the object into a dict
quickserver_order_server_details381_dict = quickserver_order_server_details381_instance.to_dict()
# create an instance of QuickserverOrderServerDetails381 from a dict
quickserver_order_server_details381_from_dict = QuickserverOrderServerDetails381.from_dict(quickserver_order_server_details381_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


