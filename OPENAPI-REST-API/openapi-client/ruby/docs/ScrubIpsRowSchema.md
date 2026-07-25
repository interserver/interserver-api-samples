# InterServerClient::ScrubIpsRowSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scrub_ip_id** | **Integer** |  | [optional] |
| **repeat_invoices_cost** | **Float** |  | [optional] |
| **scrub_ip_ip** | **String** |  | [optional] |
| **scrub_ip_status** | **String** |  | [optional] |
| **services_name** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ScrubIpsRowSchema.new(
  scrub_ip_id: null,
  repeat_invoices_cost: null,
  scrub_ip_ip: null,
  scrub_ip_status: null,
  services_name: null
)
```

