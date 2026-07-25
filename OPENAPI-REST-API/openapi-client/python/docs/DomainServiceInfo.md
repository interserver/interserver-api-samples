# DomainServiceInfo

Detailed domain service record for a domain order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_id** | **str** |  | [optional] 
**domain_hostname** | **str** |  | [optional] 
**domain_username** | **str** |  | [optional] 
**domain_password** | **str** |  | [optional] 
**domain_type** | **str** |  | [optional] 
**domain_currency** | **str** |  | [optional] 
**domain_expire_date** | **str** |  | [optional] 
**domain_order_date** | **str** |  | [optional] 
**domain_custid** | **str** |  | [optional] 
**domain_status** | **str** |  | [optional] 
**domain_invoice** | **str** |  | [optional] 
**domain_coupon** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_service_info import DomainServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of DomainServiceInfo from a JSON string
domain_service_info_instance = DomainServiceInfo.from_json(json)
# print the JSON string representation of the object
print(DomainServiceInfo.to_json())

# convert the object into a dict
domain_service_info_dict = domain_service_info_instance.to_dict()
# create an instance of DomainServiceInfo from a dict
domain_service_info_from_dict = DomainServiceInfo.from_dict(domain_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


