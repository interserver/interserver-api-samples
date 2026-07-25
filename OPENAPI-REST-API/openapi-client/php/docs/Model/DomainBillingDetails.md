# DomainBillingDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceLastInvoiceDate** | **string** | Date of the last invoice for the domain. | [optional]
**servicePaymentStatus** | **string** | Current payment status (e.g., Paid, Unpaid). | [optional]
**serviceFrequency** | **string** | Billing frequency (e.g., Yearly, Monthly). | [optional]
**nextDate** | **string** | Next billing date (ISO 8601). | [optional]
**serviceNextInvoiceDate** | **string** | Human-readable next invoice date. | [optional]
**serviceCurrency** | **string** | Billing currency code. | [optional]
**serviceCurrencySymbol** | **string** | Billing currency symbol. | [optional]
**serviceCostInfo** | **string** | Cost breakdown information. | [optional]
**serviceExtra** | [**\Interserver\\MyAdmin\Model\DomainBillingExtra**](DomainBillingExtra.md) |  | [optional]
**serviceExtraJson** | **string** | Raw JSON string of extra billing data. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
