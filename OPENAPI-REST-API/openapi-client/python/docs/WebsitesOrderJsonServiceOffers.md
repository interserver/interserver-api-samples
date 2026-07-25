# WebsitesOrderJsonServiceOffers

Schema for the jsonServiceOffers field in WebsitesOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_1026** | [**List[WebsitesOrderJsonServiceOffersItem]**](WebsitesOrderJsonServiceOffersItem.md) | Array of service offers | 

## Example

```python
from interserver_api_client.models.websites_order_json_service_offers import WebsitesOrderJsonServiceOffers

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderJsonServiceOffers from a JSON string
websites_order_json_service_offers_instance = WebsitesOrderJsonServiceOffers.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderJsonServiceOffers.to_json())

# convert the object into a dict
websites_order_json_service_offers_dict = websites_order_json_service_offers_instance.to_dict()
# create an instance of WebsitesOrderJsonServiceOffers from a dict
websites_order_json_service_offers_from_dict = WebsitesOrderJsonServiceOffers.from_dict(websites_order_json_service_offers_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


