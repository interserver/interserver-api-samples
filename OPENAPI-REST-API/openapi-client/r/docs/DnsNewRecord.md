# interserverapi::DnsNewRecord

Request data for a new DNS record.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name part of record | 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | [Enum: ] 
**content** | **character** | Content of record | 
**ttl** | **integer** | Time-to-live | [optional] [default to 86400] 
**prio** | **integer** | Priority | [optional] [default to 0] 


