# DomainOrderServices10001

Example schema for a domain service catalog entry.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **str** | Service ID | [optional] 
**services_name** | **str** | Service Name | [optional] 
**services_cost** | **str** | Service Cost | [optional] 
**services_currency** | **str** | Currency of Service Cost | [optional] 
**services_category** | **str** | Service Category | [optional] 
**services_buyable** | **str** | Buyable flag for Service | [optional] 
**services_type** | **str** | Service Type | [optional] 
**services_field1** | **str** | Field 1 of Service | [optional] 
**services_field2** | **str** | Field 2 of Service | [optional] 
**services_module** | **str** | Module of Service | [optional] 
**services_hidden** | **str** | Hidden flag for Service | [optional] 

## Example

```python
from interserver_api_client.models.domain_order_services10001 import DomainOrderServices10001

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOrderServices10001 from a JSON string
domain_order_services10001_instance = DomainOrderServices10001.from_json(json)
# print the JSON string representation of the object
print(DomainOrderServices10001.to_json())

# convert the object into a dict
domain_order_services10001_dict = domain_order_services10001_instance.to_dict()
# create an instance of DomainOrderServices10001 from a dict
domain_order_services10001_from_dict = DomainOrderServices10001.from_dict(domain_order_services10001_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


