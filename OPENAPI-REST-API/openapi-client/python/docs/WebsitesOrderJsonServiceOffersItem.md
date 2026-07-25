# WebsitesOrderJsonServiceOffersItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_offer_id** | **str** | Service offer ID | [optional] 
**service_id** | **str** | Service ID | [optional] 
**intro_cost** | **int** | Introductory cost | [optional] 
**renewal_cost** | **int** | Renewal cost | [optional] 
**intro_frequency** | **str** | Introductory frequency | [optional] 
**renewal_frequency** | **str** | Renewal frequency | [optional] 
**allow_coupon** | **str** | Allow coupon | [optional] 
**service_module** | **str** | Service module | [optional] 
**created_at** | **str** | Creation date | [optional] 
**updated_at** | **str** | Update date | [optional] 
**deleted_at** | **str** | Deletion date | [optional] 
**currency_symbol** | **str** | Currency symbol | [optional] 

## Example

```python
from interserver_api_client.models.websites_order_json_service_offers_item import WebsitesOrderJsonServiceOffersItem

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderJsonServiceOffersItem from a JSON string
websites_order_json_service_offers_item_instance = WebsitesOrderJsonServiceOffersItem.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderJsonServiceOffersItem.to_json())

# convert the object into a dict
websites_order_json_service_offers_item_dict = websites_order_json_service_offers_item_instance.to_dict()
# create an instance of WebsitesOrderJsonServiceOffersItem from a dict
websites_order_json_service_offers_item_from_dict = WebsitesOrderJsonServiceOffersItem.from_dict(websites_order_json_service_offers_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


