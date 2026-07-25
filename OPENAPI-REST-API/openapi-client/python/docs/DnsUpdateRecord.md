# DnsUpdateRecord

The request data to update a dns record.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | [optional] 
**content** | **str** |  | [optional] 
**ttl** | **str** |  | [optional] 
**prio** | **str** |  | [optional] 
**disabled** | **str** |  | [optional] 
**ordername** | **str** |  | [optional] 
**auth** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.dns_update_record import DnsUpdateRecord

# TODO update the JSON string below
json = "{}"
# create an instance of DnsUpdateRecord from a JSON string
dns_update_record_instance = DnsUpdateRecord.from_json(json)
# print the JSON string representation of the object
print(DnsUpdateRecord.to_json())

# convert the object into a dict
dns_update_record_dict = dns_update_record_instance.to_dict()
# create an instance of DnsUpdateRecord from a dict
dns_update_record_from_dict = DnsUpdateRecord.from_dict(dns_update_record_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


