# InterServerClient::ServerOrderOS

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Operating System ID. | [optional] |
| **price** | **Integer** | Operating System price. | [optional] |
| **img** | **String** | Operating System image. | [optional] |
| **short_desc** | **String** | Short description of the OS. | [optional] |
| **long_desc** | **String** | Long description of the OS. | [optional] |
| **monthly_price** | **Integer** | Monthly price. | [optional] |
| **active** | **String** | Active status. | [optional] |
| **price_display** | **String** | Display of OS price. | [optional] |
| **monthly_price_display** | **String** | Display of monthly OS price. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderOS.new(
  id: 51,
  price: 0,
  img: null,
  short_desc: AlmaLinux,
  long_desc: null,
  monthly_price: 0,
  active: 1,
  price_display: $0.00,
  monthly_price_display: $0.00
)
```

