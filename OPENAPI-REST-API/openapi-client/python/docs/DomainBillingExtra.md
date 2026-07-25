# DomainBillingExtra

Extended billing context for a domain including registrar order details and contact info.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | [**DomainOrderResponse**](DomainOrderResponse.md) |  | [optional] 
**order_id** | **str** |  | [optional] 
**domain_id** | **str** |  | [optional] 
**prov_process_pending** | [**DomainProvProcessPending**](DomainProvProcessPending.md) |  | [optional] 
**email** | **str** |  | [optional] 
**firstname** | **str** |  | [optional] 
**lastname** | **str** |  | [optional] 
**company** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**address2** | **str** |  | [optional] 
**address3** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**zip** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**fax** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_billing_extra import DomainBillingExtra

# TODO update the JSON string below
json = "{}"
# create an instance of DomainBillingExtra from a JSON string
domain_billing_extra_instance = DomainBillingExtra.from_json(json)
# print the JSON string representation of the object
print(DomainBillingExtra.to_json())

# convert the object into a dict
domain_billing_extra_dict = domain_billing_extra_instance.to_dict()
# create an instance of DomainBillingExtra from a dict
domain_billing_extra_from_dict = DomainBillingExtra.from_dict(domain_billing_extra_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


