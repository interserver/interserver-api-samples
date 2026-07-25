# InterServerClient::VpsBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | Last invoice date | [optional] |
| **service_payment_status** | **String** | Payment status | [optional] |
| **service_frequency** | **String** | Billing frequency | [optional] |
| **next_date** | **String** | Next billing date | [optional] |
| **service_next_invoice_date** | **String** | Next invoice date | [optional] |
| **service_currency** | **String** | Currency used for billing | [optional] |
| **service_currency_symbol** | **String** | Currency symbol | [optional] |
| **service_coupon** | **String** | Billing coupon code | [optional] |
| **service_cost_info** | **String** | Cost information | [optional] |
| **service_extra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | [optional] |
| **service_extra_json** | **String** | Additional information in JSON format | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsBillingDetails.new(
  service_last_invoice_date: July 26, 2023,
  service_payment_status: Paid,
  service_frequency: Monthly,
  next_date: 2023-08-26T09:41:12.000Z,
  service_next_invoice_date: August 26, 2023,
  service_currency: USD,
  service_currency_symbol: $,
  service_coupon: TheCouponIUsed,
  service_cost_info: 0.00,
  service_extra: null,
  service_extra_json: {&quot;spice&quot;:5903,&quot;snapshots&quot;:[{&quot;name&quot;:&quot;third&quot;,&quot;used&quot;:36490445,&quot;date&quot;:1692095220},{&quot;name&quot;:&quot;second&quot;,&quot;used&quot;:40894464,&quot;date&quot;:1692181620},{&quot;name&quot;:&quot;first&quot;,&quot;used&quot;:54735668,&quot;date&quot;:1692268020}]}
)
```

