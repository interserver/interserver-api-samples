# DnsRecord

A single DNS Record row for a Domain

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The ID of the DNS Record. | 
**domain_id** | **str** | The ID of the Domain this is a record of. | 
**name** | **str** |  | 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | 
**content** | **str** | The content of the record, such as the IP address or hsotname. | 
**ttl** | **str** | Time To Live (seconds) | 
**prio** | **str** | Priority | 
**disabled** | **str** |  | 
**ordername** | **str** | Alternate name to use for sorting | 
**auth** | **str** |  | 

## Example

```python
from interserver_api_client.models.dns_record import DnsRecord

# TODO update the JSON string below
json = "{}"
# create an instance of DnsRecord from a JSON string
dns_record_instance = DnsRecord.from_json(json)
# print the JSON string representation of the object
print(DnsRecord.to_json())

# convert the object into a dict
dns_record_dict = dns_record_instance.to_dict()
# create an instance of DnsRecord from a dict
dns_record_from_dict = DnsRecord.from_dict(dns_record_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


