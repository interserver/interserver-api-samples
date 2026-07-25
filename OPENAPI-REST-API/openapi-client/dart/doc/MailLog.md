# interserver_api.model.MailLog

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** | Total number of log entries that match the supplied filters, regardless of `skip` and `limit`.  Reflects the `groupby` mode. | 
**skip** | **int** | The `skip` value used for this page (echoed from the request). | 
**limit** | **int** | The `limit` value used for this page (echoed from the request). | 
**emails** | [**List<MailLogEntry>**](MailLogEntry.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


