# interserver_api.model.DomainBillingDetails

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceLastInvoiceDate** | **String** | Date of the last invoice for the domain. | [optional] 
**servicePaymentStatus** | **String** | Current payment status (e.g., Paid, Unpaid). | [optional] 
**serviceFrequency** | **String** | Billing frequency (e.g., Yearly, Monthly). | [optional] 
**nextDate** | **String** | Next billing date (ISO 8601). | [optional] 
**serviceNextInvoiceDate** | **String** | Human-readable next invoice date. | [optional] 
**serviceCurrency** | **String** | Billing currency code. | [optional] 
**serviceCurrencySymbol** | **String** | Billing currency symbol. | [optional] 
**serviceCostInfo** | **String** | Cost breakdown information. | [optional] 
**serviceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**serviceExtraJson** | **String** | Raw JSON string of extra billing data. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


