# InterServerClient::ServerOrderRAID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | RAID ID. | [optional] |
| **price** | **Integer** | RAID price. | [optional] |
| **img** | **String** | RAID image. | [optional] |
| **short_desc** | **String** | Short description of the RAID. | [optional] |
| **long_desc** | **String** | Long description of the RAID. | [optional] |
| **monthly_price** | **Integer** | Monthly price. | [optional] |
| **active** | **String** | Active status. | [optional] |
| **price_display** | **String** | Display of RAID price. | [optional] |
| **monthly_price_display** | **String** | Display of monthly RAID price. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderRAID.new(
  id: 7,
  price: 50,
  img: raid.png,
  short_desc: Hardware Raid 5,
  long_desc: Hardware Raid 5,
  monthly_price: 50,
  active: 1,
  price_display: $50.00,
  monthly_price_display: $50.00
)
```

