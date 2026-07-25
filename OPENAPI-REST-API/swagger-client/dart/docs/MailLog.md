# swagger.model.MailLog

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** | Total number of log entries that match the supplied filters, regardless of &#x60;skip&#x60; and &#x60;limit&#x60;.  Reflects the &#x60;groupby&#x60; mode. | [default to null]
**skip** | **int** | The &#x60;skip&#x60; value used for this page (echoed from the request). | [default to null]
**limit** | **int** | The &#x60;limit&#x60; value used for this page (echoed from the request). | [default to null]
**emails** | [**List&lt;MailLogEntry&gt;**](MailLogEntry.md) |  | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

