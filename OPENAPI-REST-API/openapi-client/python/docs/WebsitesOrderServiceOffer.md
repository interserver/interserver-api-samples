# WebsitesOrderServiceOffer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_offer_id** | **str** | The ID of the service offer. | 
**service_id** | **str** | The ID of the associated service. | 
**intro_cost** | **str** | The introductory cost of the service offer. | 
**renewal_cost** | **str** | The renewal cost of the service offer. | 
**intro_frequency** | **str** | The introductory frequency of the service offer. | 
**renewal_frequency** | **str** | The renewal frequency of the service offer. | 
**allow_coupon** | **str** | Indicates if coupons are allowed (1 for yes, 0 for no). | 
**service_module** | **str** | The module of the service offer. | 
**created_at** | **str** | The creation timestamp of the service offer. | 
**updated_at** | **str** | The update timestamp of the service offer. | [optional] 
**deleted_at** | **str** | The deletion timestamp of the service offer. | [optional] 

## Example

```python
from interserver_api_client.models.websites_order_service_offer import WebsitesOrderServiceOffer

# TODO update the JSON string below
json = "{}"
# create an instance of WebsitesOrderServiceOffer from a JSON string
websites_order_service_offer_instance = WebsitesOrderServiceOffer.from_json(json)
# print the JSON string representation of the object
print(WebsitesOrderServiceOffer.to_json())

# convert the object into a dict
websites_order_service_offer_dict = websites_order_service_offer_instance.to_dict()
# create an instance of WebsitesOrderServiceOffer from a dict
websites_order_service_offer_from_dict = WebsitesOrderServiceOffer.from_dict(websites_order_service_offer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


