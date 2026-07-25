# interserver_api.model.Domain

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] 
**serviceTypes** | [**Map<String, DomainServiceType>**](DomainServiceType.md) |  | [optional] [default to const {}]
**clientLinks** | [**List<DomainClientLink>**](DomainClientLink.md) |  | [optional] [default to const []]
**billingDetails** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] 
**custCurrency** | **String** |  | [optional] 
**custCurrencySymbol** | **String** |  | [optional] 
**serviceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**extraInfoTables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 
**serviceType** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] 
**contactDetails** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] 
**pwarning** | **String** |  | [optional] 
**transferInfo** | **String** |  | [optional] 
**errors** | **bool** |  | [optional] 
**domainLogs** | **List<String>** |  | [optional] [default to const []]
**allInfo** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] 
**registrarStatus** | **String** |  | [optional] 
**locked** | **String** |  | [optional] 
**whoisPrivacy** | **String** |  | [optional] 
**autoRenew** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


