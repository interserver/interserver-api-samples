# InterServerClient::ServerOrderControlPanel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Control Panel ID. | [optional] |
| **price** | **Integer** | Control Panel price. | [optional] |
| **img** | **String** | Control Panel image. | [optional] |
| **short_desc** | **String** | Short description of the control panel. | [optional] |
| **long_desc** | **String** | Long description of the control panel. | [optional] |
| **os_type** | **String** | OS types compatible with the control panel. | [optional] |
| **monthly_price** | **Integer** | Monthly price. | [optional] |
| **types** | **Array&lt;String&gt;** | List of types. | [optional] |
| **price_display** | **String** | Display of control panel price. | [optional] |
| **monthly_price_display** | **String** | Display of monthly control panel price. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerOrderControlPanel.new(
  id: 9,
  price: 80,
  img: cpanel.gif,
  short_desc: cPanel ($45+),
  long_desc: null,
  os_type: null,
  monthly_price: 0,
  types: [&quot;1&quot;,&quot;2&quot;,&quot;4&quot;,&quot;5&quot;,&quot;8&quot;,&quot;17&quot;,&quot;23&quot;,&quot;30&quot;,&quot;51&quot;],
  price_display: $80.00,
  monthly_price_display: $0.00
)
```

