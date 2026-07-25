# swagger.model.DomainBillingDetails

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceLastInvoiceDate** | **String** | Date of the last invoice for the domain. | [optional] [default to null]
**servicePaymentStatus** | **String** | Current payment status (e.g., Paid, Unpaid). | [optional] [default to null]
**serviceFrequency** | **String** | Billing frequency (e.g., Yearly, Monthly). | [optional] [default to null]
**nextDate** | **String** | Next billing date (ISO 8601). | [optional] [default to null]
**serviceNextInvoiceDate** | **String** | Human-readable next invoice date. | [optional] [default to null]
**serviceCurrency** | **String** | Billing currency code. | [optional] [default to null]
**serviceCurrencySymbol** | **String** | Billing currency symbol. | [optional] [default to null]
**serviceCostInfo** | **String** | Cost breakdown information. | [optional] [default to null]
**serviceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] [default to null]
**serviceExtraJson** | **String** | Raw JSON string of extra billing data. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

