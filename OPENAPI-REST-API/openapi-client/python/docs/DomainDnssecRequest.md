# DomainDnssecRequest

Request payload for adding DNSSEC DS records to a domain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **List[int]** | List of DNSSEC algorithm IDs for each record. | [optional] 
**digest_type** | **List[int]** | List of digest type IDs for each record. | [optional] 
**digest** | **List[str]** | List of hex digests for each record. | [optional] 
**key_tag** | **List[int]** | List of key tag values corresponding to each record. | [optional] 

## Example

```python
from interserver_api_client.models.domain_dnssec_request import DomainDnssecRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DomainDnssecRequest from a JSON string
domain_dnssec_request_instance = DomainDnssecRequest.from_json(json)
# print the JSON string representation of the object
print(DomainDnssecRequest.to_json())

# convert the object into a dict
domain_dnssec_request_dict = domain_dnssec_request_instance.to_dict()
# create an instance of DomainDnssecRequest from a dict
domain_dnssec_request_from_dict = DomainDnssecRequest.from_dict(domain_dnssec_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


