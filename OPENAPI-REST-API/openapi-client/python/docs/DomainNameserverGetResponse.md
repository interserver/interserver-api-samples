# DomainNameserverGetResponse

List of registered nameserver hosts with glue record metadata.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.domain_nameserver_get_response import DomainNameserverGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DomainNameserverGetResponse from a JSON string
domain_nameserver_get_response_instance = DomainNameserverGetResponse.from_json(json)
# print the JSON string representation of the object
print(DomainNameserverGetResponse.to_json())

# convert the object into a dict
domain_nameserver_get_response_dict = domain_nameserver_get_response_instance.to_dict()
# create an instance of DomainNameserverGetResponse from a dict
domain_nameserver_get_response_from_dict = DomainNameserverGetResponse.from_dict(domain_nameserver_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


