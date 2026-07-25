# DnsNewRecord

Request data for a new DNS record.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name part of record | 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | 
**content** | **str** | Content of record | 
**ttl** | **int** | Time-to-live | [optional] [default to 86400]
**prio** | **int** | Priority | [optional] [default to 0]

## Example

```python
from interserver_api_client.models.dns_new_record import DnsNewRecord

# TODO update the JSON string below
json = "{}"
# create an instance of DnsNewRecord from a JSON string
dns_new_record_instance = DnsNewRecord.from_json(json)
# print the JSON string representation of the object
print(DnsNewRecord.to_json())

# convert the object into a dict
dns_new_record_dict = dns_new_record_instance.to_dict()
# create an instance of DnsNewRecord from a dict
dns_new_record_from_dict = DnsNewRecord.from_dict(dns_new_record_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


