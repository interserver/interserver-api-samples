# InterServerAPI::Object::DnsRecord

## Load the model package
```perl
use InterServerAPI::Object::DnsRecord;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The ID of the DNS Record. | 
**domain_id** | **string** | The ID of the Domain this is a record of. | 
**name** | **string** |  | 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | 
**content** | **string** | The content of the record, such as the IP address or hsotname. | 
**ttl** | **string** | Time To Live (seconds) | 
**prio** | **string** | Priority | 
**disabled** | **string** |  | 
**ordername** | **string** | Alternate name to use for sorting | 
**auth** | **string** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


