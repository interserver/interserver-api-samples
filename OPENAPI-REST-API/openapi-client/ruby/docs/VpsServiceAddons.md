# InterServerClient::VpsServiceAddons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_cpanel** | **Boolean** | Whether a cPanel license is active on this VPS. | [optional] |
| **has_directadmin** | **Boolean** | Whether a DirectAdmin license is active on this VPS. | [optional] |
| **has_fantastico** | **Boolean** | Whether a Fantastico license is active on this VPS. | [optional] |
| **has_softaculous** | **Boolean** | Whether a Softaculous license is active on this VPS. | [optional] |
| **has_hdspace** | **Boolean** | Whether extra disk space has been added to this VPS. | [optional] |
| **dedicated_ip** | **Boolean** | Whether a dedicated IP address is assigned to this VPS. | [optional] |
| **extra_ips** | **Array&lt;String&gt;** | List of additional IPv4 addresses assigned to this VPS. | [optional] |
| **extra_ips6** | **Array&lt;String&gt;** | List of additional IPv6 addresses assigned to this VPS. | [optional] |
| **unpaid_ips** | **Array&lt;String&gt;** | List of IP addresses that have unpaid charges. | [optional] |
| **ips** | **Array&lt;String&gt;** | All IPv4 addresses assigned to this VPS. | [optional] |
| **ips6** | **Array&lt;String&gt;** | All IPv6 addresses assigned to this VPS. | [optional] |
| **cpanel_id** | **Integer** | The add-on service ID for the cPanel license. | [optional] |
| **cost** | **Integer** | Total monthly add-on cost in cents. | [optional] |
| **ids** | **Array&lt;String&gt;** | List of add-on service IDs active on this VPS. | [optional] |
| **rdata** | **Array&lt;String&gt;** | Raw add-on data entries. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsServiceAddons.new(
  has_cpanel: null,
  has_directadmin: null,
  has_fantastico: null,
  has_softaculous: null,
  has_hdspace: null,
  dedicated_ip: null,
  extra_ips: null,
  extra_ips6: null,
  unpaid_ips: null,
  ips: null,
  ips6: null,
  cpanel_id: null,
  cost: null,
  ids: null,
  rdata: null
)
```

