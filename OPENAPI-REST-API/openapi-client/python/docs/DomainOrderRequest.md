# DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **str** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | **str** | Order type. | [optional] [default to 'register']
**coupon** | **str** | Coupon code (addDomain only). | [optional] [default to '']
**whois_privacy** | **str** | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). | [optional] 

## Example

```python
from interserver_api_client.models.domain_order_request import DomainOrderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOrderRequest from a JSON string
domain_order_request_instance = DomainOrderRequest.from_json(json)
# print the JSON string representation of the object
print(DomainOrderRequest.to_json())

# convert the object into a dict
domain_order_request_dict = domain_order_request_instance.to_dict()
# create an instance of DomainOrderRequest from a dict
domain_order_request_from_dict = DomainOrderRequest.from_dict(domain_order_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


