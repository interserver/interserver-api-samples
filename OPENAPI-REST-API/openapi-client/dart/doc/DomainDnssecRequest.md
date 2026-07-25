# interserver_api.model.DomainDnssecRequest

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **List<int>** | List of DNSSEC algorithm IDs for each record. | [optional] [default to const []]
**digestType** | **List<int>** | List of digest type IDs for each record. | [optional] [default to const []]
**digest** | **List<String>** | List of hex digests for each record. | [optional] [default to const []]
**keyTag** | **List<int>** | List of key tag values corresponding to each record. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


