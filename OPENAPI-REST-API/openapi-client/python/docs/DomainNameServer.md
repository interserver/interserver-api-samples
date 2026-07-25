# DomainNameServer

A single registered nameserver entry with glue IPs.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sortorder** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**ipaddress** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_name_server import DomainNameServer

# TODO update the JSON string below
json = "{}"
# create an instance of DomainNameServer from a JSON string
domain_name_server_instance = DomainNameServer.from_json(json)
# print the JSON string representation of the object
print(DomainNameServer.to_json())

# convert the object into a dict
domain_name_server_dict = domain_name_server_instance.to_dict()
# create an instance of DomainNameServer from a dict
domain_name_server_from_dict = DomainNameServer.from_dict(domain_name_server_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


