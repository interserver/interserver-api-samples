# DomainNameserverPutRequest

Payload for replacing the assigned nameserver list for a domain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nameserver** | **List[str]** |  | 

## Example

```python
from interserver_api_client.models.domain_nameserver_put_request import DomainNameserverPutRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DomainNameserverPutRequest from a JSON string
domain_nameserver_put_request_instance = DomainNameserverPutRequest.from_json(json)
# print the JSON string representation of the object
print(DomainNameserverPutRequest.to_json())

# convert the object into a dict
domain_nameserver_put_request_dict = domain_nameserver_put_request_instance.to_dict()
# create an instance of DomainNameserverPutRequest from a dict
domain_nameserver_put_request_from_dict = DomainNameserverPutRequest.from_dict(domain_nameserver_put_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


