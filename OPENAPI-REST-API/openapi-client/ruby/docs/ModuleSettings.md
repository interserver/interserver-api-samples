# InterServerClient::ModuleSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id_offset** | **Integer** |  |  |
| **use_repeat_invoice** | **Boolean** |  |  |
| **use_packages** | **Boolean** |  |  |
| **billing_days_offset** | **Integer** |  |  |
| **imgname** | **String** |  |  |
| **repeat_billing_method** | **Integer** |  |  |
| **delete_pending_days** | **Integer** |  |  |
| **suspend_days** | **Integer** |  |  |
| **suspend_warning_days** | **Integer** |  |  |
| **title** | **String** |  |  |
| **menuname** | **String** |  |  |
| **email_from** | **String** |  |  |
| **tblname** | **String** |  |  |
| **table** | **String** |  |  |
| **title_field** | **String** |  |  |
| **prefix** | **String** |  |  |
| **title_field2** | **String** |  | [optional] |
| **title_field3** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ModuleSettings.new(
  service_id_offset: 0,
  use_repeat_invoice: true,
  use_packages: true,
  billing_days_offset: 0,
  imgname: root-server.png,
  repeat_billing_method: 2,
  delete_pending_days: 45,
  suspend_days: 14,
  suspend_warning_days: 7,
  title: VPS,
  menuname: VPS,
  email_from: support@interserver.net&quot;,
  tblname: VPS,
  table: vps,
  title_field: vps_hostname,
  prefix: vps,
  title_field2: vps_ip,
  title_field3: vps_vzid
)
```

