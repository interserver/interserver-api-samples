# DomainNameserverPostRequest

Payload for adding a registered nameserver (glue record).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**ip_address** | **str** |  | 

## Example

```python
from interserver_api_client.models.domain_nameserver_post_request import DomainNameserverPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DomainNameserverPostRequest from a JSON string
domain_nameserver_post_request_instance = DomainNameserverPostRequest.from_json(json)
# print the JSON string representation of the object
print(DomainNameserverPostRequest.to_json())

# convert the object into a dict
domain_nameserver_post_request_dict = domain_nameserver_post_request_instance.to_dict()
# create an instance of DomainNameserverPostRequest from a dict
domain_nameserver_post_request_from_dict = DomainNameserverPostRequest.from_dict(domain_nameserver_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


