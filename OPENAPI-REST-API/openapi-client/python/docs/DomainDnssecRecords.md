# DomainDnssecRecords

DNSSEC DS records currently configured for a domain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.domain_dnssec_records import DomainDnssecRecords

# TODO update the JSON string below
json = "{}"
# create an instance of DomainDnssecRecords from a JSON string
domain_dnssec_records_instance = DomainDnssecRecords.from_json(json)
# print the JSON string representation of the object
print(DomainDnssecRecords.to_json())

# convert the object into a dict
domain_dnssec_records_dict = domain_dnssec_records_instance.to_dict()
# create an instance of DomainDnssecRecords from a dict
domain_dnssec_records_from_dict = DomainDnssecRecords.from_dict(domain_dnssec_records_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


