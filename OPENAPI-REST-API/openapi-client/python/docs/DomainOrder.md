# DomainOrder

Ordering metadata for domain registration and transfers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**whois_privacy_cost** | **str** | Cost of Whois Privacy | [optional] 
**services** | [**DomainOrderServices**](DomainOrderServices.md) |  | [optional] 
**tld_services** | **object** | Map of TLDs to domain service IDs. | [optional] 

## Example

```python
from interserver_api_client.models.domain_order import DomainOrder

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOrder from a JSON string
domain_order_instance = DomainOrder.from_json(json)
# print the JSON string representation of the object
print(DomainOrder.to_json())

# convert the object into a dict
domain_order_dict = domain_order_instance.to_dict()
# create an instance of DomainOrder from a dict
domain_order_from_dict = DomainOrder.from_dict(domain_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


