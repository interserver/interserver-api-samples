# interserver_api.model.DomainBillingDetails

## Load the model package
```dart
import 'package:interserver_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceLastInvoiceDate** | **Optional&lt;String?&gt;** | Date of the last invoice for the domain. | [optional] 
**servicePaymentStatus** | **Optional&lt;String?&gt;** | Current payment status (e.g., Paid, Unpaid). | [optional] 
**serviceFrequency** | **Optional&lt;String?&gt;** | Billing frequency (e.g., Yearly, Monthly). | [optional] 
**nextDate** | **Optional&lt;String?&gt;** | Next billing date (ISO 8601). | [optional] 
**serviceNextInvoiceDate** | **Optional&lt;String?&gt;** | Human-readable next invoice date. | [optional] 
**serviceCurrency** | **Optional&lt;String?&gt;** | Billing currency code. | [optional] 
**serviceCurrencySymbol** | **Optional&lt;String?&gt;** | Billing currency symbol. | [optional] 
**serviceCostInfo** | **Optional&lt;String?&gt;** | Cost breakdown information. | [optional] 
**serviceExtra** | [**Optional&lt;DomainBillingExtra?&gt;**](DomainBillingExtra.md) |  | [optional] 
**serviceExtraJson** | **Optional&lt;String?&gt;** | Raw JSON string of extra billing data. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


