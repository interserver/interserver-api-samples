# swagger.model.ChargeInvoiceRowsInvoices

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoicesId** | **double** | Unique invoice ID. | [optional] [default to null]
**invoicesDescription** | **String** | Description of the invoice charge. | [optional] [default to null]
**invoicesAmount** | **double** | Invoice amount. | [optional] [default to null]
**invoicesDate** | **String** | Invoice date. | [optional] [default to null]
**invoicesPaid** | **double** |  | [optional] [default to null]
**invoicesDueDate** | **String** |  | [optional] [default to null]
**invoicesCurrency** | **String** |  | [optional] [default to null]
**currencySymbol** | **String** |  | [optional] [default to null]
**invoicesDateFormatted** | **String** |  | [optional] [default to null]
**paidInvoices** | [**Map&lt;String, ChargeInvoiceRowsPaidInvoices&gt;**](ChargeInvoiceRowsPaidInvoices.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

