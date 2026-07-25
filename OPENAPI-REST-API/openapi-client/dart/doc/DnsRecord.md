# interserver_api.model.DnsRecord

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the DNS Record. | 
**domainId** | **String** | The ID of the Domain this is a record of. | 
**name** | **String** |  | 
**type** | [**DnsRecordType**](DnsRecordType.md) |  | 
**content** | **String** | The content of the record, such as the IP address or hsotname. | 
**ttl** | **String** | Time To Live (seconds) | 
**prio** | **String** | Priority | 
**disabled** | **String** |  | 
**ordername** | **String** | Alternate name to use for sorting | 
**auth** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


