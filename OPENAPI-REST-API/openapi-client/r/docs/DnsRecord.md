# interserverapi::DnsRecord

A single DNS Record row for a Domain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | The ID of the DNS Record. | 
**domain_id** | **character** | The ID of the Domain this is a record of. | 
**name** | **character** |  | 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | [Enum: ] 
**content** | **character** | The content of the record, such as the IP address or hsotname. | 
**ttl** | **character** | Time To Live (seconds) | 
**prio** | **character** | Priority | 
**disabled** | **character** |  | 
**ordername** | **character** | Alternate name to use for sorting | 
**auth** | **character** |  | 


