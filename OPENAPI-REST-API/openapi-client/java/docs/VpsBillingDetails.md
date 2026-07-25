

# VpsBillingDetails

Billing information for a VPS service including payment status, billing cycle, and cost.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**serviceLastInvoiceDate** | **String** | Last invoice date |  [optional] |
|**servicePaymentStatus** | **String** | Payment status |  [optional] |
|**serviceFrequency** | **String** | Billing frequency |  [optional] |
|**nextDate** | **String** | Next billing date |  [optional] |
|**serviceNextInvoiceDate** | **String** | Next invoice date |  [optional] |
|**serviceCurrency** | **String** | Currency used for billing |  [optional] |
|**serviceCurrencySymbol** | **String** | Currency symbol |  [optional] |
|**serviceCoupon** | **String** | Billing coupon code |  [optional] |
|**serviceCostInfo** | **String** | Cost information |  [optional] |
|**serviceExtra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  |  [optional] |
|**serviceExtraJson** | **String** | Additional information in JSON format |  [optional] |


## Implemented Interfaces

* Serializable


