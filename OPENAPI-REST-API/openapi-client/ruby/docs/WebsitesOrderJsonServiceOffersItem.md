# InterServerClient::WebsitesOrderJsonServiceOffersItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_offer_id** | **String** | Service offer ID | [optional] |
| **service_id** | **String** | Service ID | [optional] |
| **intro_cost** | **Integer** | Introductory cost | [optional] |
| **renewal_cost** | **Integer** | Renewal cost | [optional] |
| **intro_frequency** | **String** | Introductory frequency | [optional] |
| **renewal_frequency** | **String** | Renewal frequency | [optional] |
| **allow_coupon** | **String** | Allow coupon | [optional] |
| **service_module** | **String** | Service module | [optional] |
| **created_at** | **String** | Creation date | [optional] |
| **updated_at** | **String** | Update date | [optional] |
| **deleted_at** | **String** | Deletion date | [optional] |
| **currency_symbol** | **String** | Currency symbol | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsitesOrderJsonServiceOffersItem.new(
  service_offer_id: 136,
  service_id: 1026,
  intro_cost: 96,
  renewal_cost: 96,
  intro_frequency: 12,
  renewal_frequency: 12,
  allow_coupon: 1,
  service_module: webhosting,
  created_at: 2023-01-25T14:50:55.000Z,
  updated_at: null,
  deleted_at: null,
  currency_symbol: $
)
```

