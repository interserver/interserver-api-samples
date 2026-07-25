# swagger.model.DomainDnssecRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **List&lt;int&gt;** | List of DNSSEC algorithm IDs for each record. | [optional] [default to []]
**digestType** | **List&lt;int&gt;** | List of digest type IDs for each record. | [optional] [default to []]
**digest** | **List&lt;String&gt;** | List of hex digests for each record. | [optional] [default to []]
**keyTag** | **List&lt;int&gt;** | List of key tag values corresponding to each record. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

