# DomainNameserverGetResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**ipaddress** | **str** |  | 
**can_delete** | **str** | Whether the registrar allows deletion of this nameserver entry. | 

## Example

```python
from interserver_api_client.models.domain_nameserver_get_response_inner import DomainNameserverGetResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of DomainNameserverGetResponseInner from a JSON string
domain_nameserver_get_response_inner_instance = DomainNameserverGetResponseInner.from_json(json)
# print the JSON string representation of the object
print(DomainNameserverGetResponseInner.to_json())

# convert the object into a dict
domain_nameserver_get_response_inner_dict = domain_nameserver_get_response_inner_instance.to_dict()
# create an instance of DomainNameserverGetResponseInner from a dict
domain_nameserver_get_response_inner_from_dict = DomainNameserverGetResponseInner.from_dict(domain_nameserver_get_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


