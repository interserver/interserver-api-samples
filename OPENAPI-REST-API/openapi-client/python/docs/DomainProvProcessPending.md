# DomainProvProcessPending

Provisioning status data for a pending domain order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ops_version** | **str** |  | [optional] 
**response_text** | **str** |  | [optional] 
**protocol** | **str** |  | [optional] 
**response_code** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**object** | **str** |  | [optional] 
**is_success** | **str** |  | [optional] 
**attributes** | [**DomainProvProcessPendingAttributes**](DomainProvProcessPendingAttributes.md) |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_prov_process_pending import DomainProvProcessPending

# TODO update the JSON string below
json = "{}"
# create an instance of DomainProvProcessPending from a JSON string
domain_prov_process_pending_instance = DomainProvProcessPending.from_json(json)
# print the JSON string representation of the object
print(DomainProvProcessPending.to_json())

# convert the object into a dict
domain_prov_process_pending_dict = domain_prov_process_pending_instance.to_dict()
# create an instance of DomainProvProcessPending from a dict
domain_prov_process_pending_from_dict = DomainProvProcessPending.from_dict(domain_prov_process_pending_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


