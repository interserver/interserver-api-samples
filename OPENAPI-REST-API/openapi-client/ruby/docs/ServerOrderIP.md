# InterServerClient::ServerOrderIP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | IP ID. | [optional] |
| **price** | **Integer** | IP price. | [optional] |
| **img** | **String** | IP image. | [optional] |
| **short_desc** | **String** | Short description of the IP. | [optional] |
| **long_desc** | **String** | Long description of the IP. | [optional] |
| **qty** | **String** | Quantity of IPs. | [optional] |
| **monthly_price** | **Integer** | Monthly price. | [optional] |
| **price_display** | **String** | Display of IP price. | [optional] |
| **monthly_price_display** | **String** | Display of monthly IP price. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderIP.new(
  id: 9,
  price: 0,
  img: ips.jpg,
  short_desc: 1 Vlan Ip (/30),
  long_desc: 1 IP In personal Vlan,
  qty: 1,
  monthly_price: 0,
  price_display: $0.00,
  monthly_price_display: $0.00
)
```

