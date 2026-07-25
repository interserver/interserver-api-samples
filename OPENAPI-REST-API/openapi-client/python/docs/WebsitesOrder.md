# WebsitesOrder

Schema for the WebsitesOrder object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**step** | **str** | Step description | 
**website** | **str** | Website description | 
**period** | **int** | Period description | 
**service_offer_id** | **int** | Service offer ID description | 
**packages** | [**WebsitesOrderPackages**](WebsitesOrderPackages.md) |  | 
**enable_domain_registering** | **bool** | Enable domain registering description | 
**json_services** | [**WebsitesOrderJsonServices**](WebsitesOrderJsonServices.md) |  | 
**json_service_offers** | [**WebsitesOrderJsonServiceOffers**](WebsitesOrderJsonServiceOffers.md) |  | 
**service_types** | [**WebsitesOrderServiceTypes**](WebsitesOrderServiceTypes.md) |  | 
**service_offers** | [**WebsitesOrderServiceOffers**](WebsitesOrderServiceOffers.md) |  | 
**packges** | [**WebsitesOrderPackges**](WebsitesOrderPackges.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.websites_order import WebsitesOrder

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrder from a JSON string
websites_order_instance = WebsitesOrder.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrder.to_json())

# convert the object into a dict
websites_order_dict = websites_order_instance.to_dict()
# create an instance of WebsitesOrder from a dict
websites_order_from_dict = WebsitesOrder.from_dict(websites_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


