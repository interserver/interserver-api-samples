# DnsNewDomain

The request for a new domain to be managed by the dns servers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **str** | The domain name. | 
**ip** | **str** | IP Address to point the domain to. | 

## Example

```python
from interserver_api_client.models.dns_new_domain import DnsNewDomain

# TODO update the JSON string below
json = "{}"
# create an instance of DnsNewDomain from a JSON string
dns_new_domain_instance = DnsNewDomain.from_json(json)
# print the JSON string representation of the object
print(DnsNewDomain.to_json())

# convert the object into a dict
dns_new_domain_dict = dns_new_domain_instance.to_dict()
# create an instance of DnsNewDomain from a dict
dns_new_domain_from_dict = DnsNewDomain.from_dict(dns_new_domain_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


