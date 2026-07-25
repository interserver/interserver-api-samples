# InterServerClient::WebsitesOrderServiceOffer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_offer_id** | **String** | The ID of the service offer. |  |
| **service_id** | **String** | The ID of the associated service. |  |
| **intro_cost** | **String** | The introductory cost of the service offer. |  |
| **renewal_cost** | **String** | The renewal cost of the service offer. |  |
| **intro_frequency** | **String** | The introductory frequency of the service offer. |  |
| **renewal_frequency** | **String** | The renewal frequency of the service offer. |  |
| **allow_coupon** | **String** | Indicates if coupons are allowed (1 for yes, 0 for no). |  |
| **service_module** | **String** | The module of the service offer. |  |
| **created_at** | **String** | The creation timestamp of the service offer. |  |
| **updated_at** | **String** | The update timestamp of the service offer. | [optional] |
| **deleted_at** | **String** | The deletion timestamp of the service offer. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsitesOrderServiceOffer.new(
  service_offer_id: 136,
  service_id: 1026,
  intro_cost: 96.00,
  renewal_cost: 96.00,
  intro_frequency: 12,
  renewal_frequency: 12,
  allow_coupon: 1,
  service_module: webhosting,
  created_at: 2023-01-25T14:50:55.000Z,
  updated_at: null,
  deleted_at: null
)
```

