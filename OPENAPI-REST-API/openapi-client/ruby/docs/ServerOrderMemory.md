# InterServerClient::ServerOrderMemory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Memory ID. | [optional] |
| **price** | **String** | Memory price. | [optional] |
| **img** | **String** | Memory image. | [optional] |
| **short_desc** | **String** | Short description of the memory. | [optional] |
| **long_desc** | **String** | Long description of the memory. | [optional] |
| **manu** | **String** | Manufacturer information. | [optional] |
| **size** | **String** | Memory size. | [optional] |
| **type** | **String** | Memory type. | [optional] |
| **hidden** | **String** | Hidden status. | [optional] |
| **monthly_price** | **Integer** | Monthly price. | [optional] |
| **drive_type** | **String** | Drive type. | [optional] |
| **monthly_price_display** | **String** | Display of monthly memory price. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderMemory.new(
  id: 65,
  price: 0,
  img: hd.jpg,
  short_desc: 20TB SATA,
  long_desc: null,
  manu: null,
  size: 3000,
  type: null,
  hidden: 0,
  monthly_price: 50,
  drive_type: lff,
  monthly_price_display: $50.00
)
```

