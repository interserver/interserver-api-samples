# DomainOrderResponse

Registrar response metadata returned after a domain order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ops_version** | **str** |  | [optional] 
**protocol** | **str** |  | [optional] 
**is_success** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**attributes** | [**DomainOrderResponseAttributes**](DomainOrderResponseAttributes.md) |  | [optional] 
**response_text** | **str** |  | [optional] 
**object** | **str** |  | [optional] 
**response_code** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_order_response import DomainOrderResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOrderResponse from a JSON string
domain_order_response_instance = DomainOrderResponse.from_json(json)
# print the JSON string representation of the object
print(DomainOrderResponse.to_json())

# convert the object into a dict
domain_order_response_dict = domain_order_response_instance.to_dict()
# create an instance of DomainOrderResponse from a dict
domain_order_response_from_dict = DomainOrderResponse.from_dict(domain_order_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


