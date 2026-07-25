# InterServerClient::ServerOrderBandwidth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Bandwidth ID. | [optional] |
| **price** | **Integer** | Bandwidth price. | [optional] |
| **img** | **String** | Bandwidth image. | [optional] |
| **short_desc** | **String** | Short description of the bandwidth. | [optional] |
| **long_desc** | **String** | Long description of the bandwidth. | [optional] |
| **type** | **String** | Bandwidth type. | [optional] |
| **qty** | **String** | Quantity of bandwidth. | [optional] |
| **active** | **String** | Active status. | [optional] |
| **monthly_price** | **Integer** | Monthly price. | [optional] |
| **price_display** | **String** | Display of bandwidth price. | [optional] |
| **monthly_price_display** | **String** | Display of monthly bandwidth price. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderBandwidth.new(
  id: 15,
  price: 0,
  img: bandwidth.jpg,
  short_desc: 150TB (10Gb Port),
  long_desc:  - 2000GB Bandwidth...,
  type: Standard,
  qty: 4000,
  active: 1,
  monthly_price: 15,
  price_display: $0.00,
  monthly_price_display: $15.00
)
```

