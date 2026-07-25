# swagger.model.ServiceOrderPostResponse

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continue_** | **bool** | Whether the order was accepted and can proceed to payment. | [optional] [default to null]
**errors** | **List&lt;String&gt;** | List of validation errors (empty on success). | [optional] [default to []]
**totalCost** | **String** | Total cost of the order. | [optional] [default to null]
**iid** | **String** | Primary invoice ID for payment. | [optional] [default to null]
**iids** | **List&lt;String&gt;** | All invoice identifiers associated with the order. | [optional] [default to []]
**realIids** | **List&lt;String&gt;** | Numeric invoice IDs for use with billing endpoints. | [optional] [default to []]
**serviceId** | **int** | The new service ID created by the order. | [optional] [default to null]
**invoiceDescription** | **String** | Human-readable description of the invoice. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

