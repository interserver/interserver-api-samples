# DomainClientLink

Links and labels for domain-related UI actions.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** |  | [optional] 
**link** | **str** |  | [optional] 
**icon** | **str** |  | [optional] 
**icon_text** | **str** |  | [optional] 
**help_text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_client_link import DomainClientLink

# TODO update the JSON string below
json = "{}"
# create an instance of DomainClientLink from a JSON string
domain_client_link_instance = DomainClientLink.from_json(json)
# print the JSON string representation of the object
print(DomainClientLink.to_json())

# convert the object into a dict
domain_client_link_dict = domain_client_link_instance.to_dict()
# create an instance of DomainClientLink from a dict
domain_client_link_from_dict = DomainClientLink.from_dict(domain_client_link_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


