# WebsitesOrderJsonServices

Schema for the jsonServices field in WebsitesOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_11447** | **str** | JSON services description | 

## Example

```python
from interserver_api_client.models.websites_order_json_services import WebsitesOrderJsonServices

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderJsonServices from a JSON string
websites_order_json_services_instance = WebsitesOrderJsonServices.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderJsonServices.to_json())

# convert the object into a dict
websites_order_json_services_dict = websites_order_json_services_instance.to_dict()
# create an instance of WebsitesOrderJsonServices from a dict
websites_order_json_services_from_dict = WebsitesOrderJsonServices.from_dict(websites_order_json_services_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


