# QuickserverOrderDistroSel

Distribution selection.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ubuntu** | [**QuickserverOrderDistroSelUbuntu**](QuickserverOrderDistroSelUbuntu.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_order_distro_sel import QuickserverOrderDistroSel

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverOrderDistroSel from a JSON string
quickserver_order_distro_sel_instance = QuickserverOrderDistroSel.from_json(json)
# print the JSON string representation of the object
print(QuickserverOrderDistroSel.to_json())

# convert the object into a dict
quickserver_order_distro_sel_dict = quickserver_order_distro_sel_instance.to_dict()
# create an instance of QuickserverOrderDistroSel from a dict
quickserver_order_distro_sel_from_dict = QuickserverOrderDistroSel.from_dict(quickserver_order_distro_sel_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


