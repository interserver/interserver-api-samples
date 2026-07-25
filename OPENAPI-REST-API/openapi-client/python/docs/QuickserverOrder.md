# QuickserverOrder

Available QuickServer options and OS templates for ordering a new QuickServer.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **str** | Quickserver ID. | [optional] 
**server_details** | [**QuickserverOrderServerDetails**](QuickserverOrderServerDetails.md) |  | [optional] 
**templates** | [**QuickserverOrderTemplates**](QuickserverOrderTemplates.md) |  | [optional] 
**version** | [**QuickserverOrderVersion**](QuickserverOrderVersion.md) |  | [optional] 
**distro_sel** | [**QuickserverOrderDistroSel**](QuickserverOrderDistroSel.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_order import QuickserverOrder

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverOrder from a JSON string
quickserver_order_instance = QuickserverOrder.from_json(json)
# print the JSON string representation of the object
print(QuickserverOrder.to_json())

# convert the object into a dict
quickserver_order_dict = quickserver_order_instance.to_dict()
# create an instance of QuickserverOrder from a dict
quickserver_order_from_dict = QuickserverOrder.from_dict(quickserver_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


