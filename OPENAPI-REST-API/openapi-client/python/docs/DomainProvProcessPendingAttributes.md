# DomainProvProcessPendingAttributes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**order_id** | **str** |  | [optional] 
**registration_expiration_date** | **str** |  | [optional] 
**f_auto_renew** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_prov_process_pending_attributes import DomainProvProcessPendingAttributes

# TODO update the JSON string below
json = "{}"
# create an instance of DomainProvProcessPendingAttributes from a JSON string
domain_prov_process_pending_attributes_instance = DomainProvProcessPendingAttributes.from_json(json)
# print the JSON string representation of the object
print(DomainProvProcessPendingAttributes.to_json())

# convert the object into a dict
domain_prov_process_pending_attributes_dict = domain_prov_process_pending_attributes_instance.to_dict()
# create an instance of DomainProvProcessPendingAttributes from a dict
domain_prov_process_pending_attributes_from_dict = DomainProvProcessPendingAttributes.from_dict(domain_prov_process_pending_attributes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


