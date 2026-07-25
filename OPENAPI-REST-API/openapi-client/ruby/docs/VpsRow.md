# InterServerClient::VpsRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vps_id** | **String** | The id of the vps. |  |
| **vps_name** | **String** | The name of the vps. |  |
| **repeat_invoices_cost** | **String** | The repeat invoices cost of the vps. |  |
| **vps_hostname** | **String** | The hostname of the vps. |  |
| **vps_ip** | **String** | The ip of the vps. |  |
| **vps_status** | **String** | The status of the vps. |  |
| **services_name** | **String** | The services name of the vps. |  |
| **vps_comment** | **String** | The comment of the vps. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsRow.new(
  vps_id: 100,
  vps_name: Builder,
  repeat_invoices_cost: 10.00,
  vps_hostname: vps100,
  vps_ip: 64.20.46.220,
  vps_status: active,
  services_name: KVM Windows VPS Slice,
  vps_comment: 
)
```

