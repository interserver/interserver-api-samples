# WebsiteOrderPutRequest

request to validate a webhosting order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **str** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**package_id** | **int** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | **str** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to '']
**period** | **int** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**coupon** | **str** | Coupon code. | [optional] [default to '']
**service_offer_id** | **int** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**script** | **int** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**comment** | **str** | Free-form note saved on the service row. | [optional] [default to '']
**register_domain** | **bool** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to False]

## Example

```python
from interserver_api_client.models.website_order_put_request import WebsiteOrderPutRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WebsiteOrderPutRequest from a JSON string
website_order_put_request_instance = WebsiteOrderPutRequest.from_json(json)
# print the JSON string representation of the object
print(WebsiteOrderPutRequest.to_json())

# convert the object into a dict
website_order_put_request_dict = website_order_put_request_instance.to_dict()
# create an instance of WebsiteOrderPutRequest from a dict
website_order_put_request_from_dict = WebsiteOrderPutRequest.from_dict(website_order_put_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


