# DomainOrderServices

Available domain service catalog entries keyed by service ID.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_order_services10001** | [**DomainOrderServices10001**](DomainOrderServices10001.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_order_services import DomainOrderServices

# TODO update the JSON string below
json = "{}"
# create an instance of DomainOrderServices from a JSON string
domain_order_services_instance = DomainOrderServices.from_json(json)
# print the JSON string representation of the object
print(DomainOrderServices.to_json())

# convert the object into a dict
domain_order_services_dict = domain_order_services_instance.to_dict()
# create an instance of DomainOrderServices from a dict
domain_order_services_from_dict = DomainOrderServices.from_dict(domain_order_services_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


