# DomainOrderResponseAttributes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Registrar order ID. | [optional] 
**admin_email** | **str** | Administrative contact email provided for the order. | [optional] 

## Example

```python
from interserver_api_client.models.domain_order_response_attributes import DomainOrderResponseAttributes

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOrderResponseAttributes from a JSON string
domain_order_response_attributes_instance = DomainOrderResponseAttributes.from_json(json)
# print the JSON string representation of the object
print(DomainOrderResponseAttributes.to_json())

# convert the object into a dict
domain_order_response_attributes_dict = domain_order_response_attributes_instance.to_dict()
# create an instance of DomainOrderResponseAttributes from a dict
domain_order_response_attributes_from_dict = DomainOrderResponseAttributes.from_dict(domain_order_response_attributes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


