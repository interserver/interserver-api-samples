# WebsitesOrderServiceOffers

The service offers data.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_1026** | [**List[WebsitesOrderServiceOffer]**](WebsitesOrderServiceOffer.md) |  | 

## Example

```python
from interserver_api_client.models.websites_order_service_offers import WebsitesOrderServiceOffers

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderServiceOffers from a JSON string
websites_order_service_offers_instance = WebsitesOrderServiceOffers.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderServiceOffers.to_json())

# convert the object into a dict
websites_order_service_offers_dict = websites_order_service_offers_instance.to_dict()
# create an instance of WebsitesOrderServiceOffers from a dict
websites_order_service_offers_from_dict = WebsitesOrderServiceOffers.from_dict(websites_order_service_offers_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


