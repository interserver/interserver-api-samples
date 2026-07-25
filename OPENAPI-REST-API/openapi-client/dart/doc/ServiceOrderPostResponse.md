# interserver_api.model.ServiceOrderPostResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continue_** | **bool** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **List<String>** | List of validation errors (empty on success). | [optional] [default to const []]
**totalCost** | **String** | Total cost of the order. | [optional] 
**iid** | **String** | Primary invoice ID for payment. | [optional] 
**iids** | **List<String>** | All invoice identifiers associated with the order. | [optional] [default to const []]
**realIids** | **List<String>** | Numeric invoice IDs for use with billing endpoints. | [optional] [default to const []]
**serviceId** | **int** | The new service ID created by the order. | [optional] 
**invoiceDescription** | **String** | Human-readable description of the invoice. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


