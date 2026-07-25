# interserver_api.model.ChargeInvoiceRowsInvoicesValue

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoicesId** | **num** | Unique invoice ID. | [optional] 
**invoicesDescription** | **String** | Description of the invoice charge. | [optional] 
**invoicesAmount** | **num** | Invoice amount. | [optional] 
**invoicesDate** | **String** | Invoice date. | [optional] 
**invoicesPaid** | **num** |  | [optional] 
**invoicesDueDate** | **String** |  | [optional] 
**invoicesCurrency** | **String** |  | [optional] 
**currencySymbol** | **String** |  | [optional] 
**invoicesDateFormatted** | **String** |  | [optional] 
**paidInvoices** | [**Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue>**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid = 1 this array will show | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


