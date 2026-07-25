# interserver_api.model.ServiceOrderPostResponse

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continue_** | **Optional&lt;bool?&gt;** | Whether the order was accepted and can proceed to payment. | [optional] 
**errors** | **Optional&lt;List&lt;String&gt;?&gt;** | List of validation errors (empty on success). | [optional] 
**totalCost** | **Optional&lt;String?&gt;** | Total cost of the order. | [optional] 
**iid** | **Optional&lt;String?&gt;** | Primary invoice ID for payment. | [optional] 
**iids** | **Optional&lt;List&lt;String&gt;?&gt;** | All invoice identifiers associated with the order. | [optional] 
**realIids** | **Optional&lt;List&lt;String&gt;?&gt;** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**serviceId** | **Optional&lt;int?&gt;** | The new service ID created by the order. | [optional] 
**invoiceDescription** | **Optional&lt;String?&gt;** | Human-readable description of the invoice. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


