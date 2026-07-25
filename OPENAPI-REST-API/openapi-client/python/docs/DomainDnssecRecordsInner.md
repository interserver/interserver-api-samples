# DomainDnssecRecordsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **str** |  | [optional] 
**digest_type** | **str** |  | [optional] 
**digest** | **str** |  | [optional] 
**key_tag** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.domain_dnssec_records_inner import DomainDnssecRecordsInner

# TODO update the JSON string below
json = "{}"
# create an instance of DomainDnssecRecordsInner from a JSON string
domain_dnssec_records_inner_instance = DomainDnssecRecordsInner.from_json(json)
# print the JSON string representation of the object
print(DomainDnssecRecordsInner.to_json())

# convert the object into a dict
domain_dnssec_records_inner_dict = domain_dnssec_records_inner_instance.to_dict()
# create an instance of DomainDnssecRecordsInner from a dict
domain_dnssec_records_inner_from_dict = DomainDnssecRecordsInner.from_dict(domain_dnssec_records_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


