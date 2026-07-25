# InterServerClient::QuickserverServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qs_id** | **String** | Quickserver ID | [optional] |
| **qs_custid** | **String** | Customer ID | [optional] |
| **qs_server** | **String** | Server information | [optional] |
| **qs_ip** | **String** | IP address | [optional] |
| **qs_ipv6** | **String** | IPv6 address (null) | [optional] |
| **qs_vzid** | **String** | VZ ID | [optional] |
| **qs_currency** | **String** | Currency | [optional] |
| **qs_type** | **String** | Type | [optional] |
| **qs_order_date** | **String** | Order date | [optional] |
| **qs_status** | **String** | Status | [optional] |
| **qs_invoice** | **String** | Invoice number | [optional] |
| **qs_coupon** | **String** | Coupon information | [optional] |
| **qs_extra** | **String** | Extra information | [optional] |
| **qs_hostname** | **String** | Hostname | [optional] |
| **qs_server_status** | **String** | Server status | [optional] |
| **qs_comment** | **String** | Comment | [optional] |
| **qs_slices** | **String** | Slices information | [optional] |
| **qs_vnc** | **String** | VNC information | [optional] |
| **qs_vnc_port** | **Integer** | VNC port (null) | [optional] |
| **qs_rootpass** | **String** | Root password | [optional] |
| **qs_mac** | **String** | MAC address | [optional] |
| **qs_os** | **String** | Operating system | [optional] |
| **qs_version** | **String** | OS version | [optional] |
| **qs_location** | **String** | Location | [optional] |
| **qs_platform** | **String** | Platform (null) | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverServiceInfo.new(
  qs_id: 24355,
  qs_custid: 771282,
  qs_server: 365,
  qs_ip: ,
  qs_ipv6: null,
  qs_vzid: qs24355,
  qs_currency: USD,
  qs_type: 700,
  qs_order_date: 2023-04-11T20:00:06.000Z,
  qs_status: canceled,
  qs_invoice: 20297531,
  qs_coupon: 0,
  qs_extra: {&quot;platform&quot;:&quot;kvm&quot;},
  qs_hostname: qs24355,
  qs_server_status: deleted,
  qs_comment: ,
  qs_slices: 0,
  qs_vnc: 99.88.77.66,
  qs_vnc_port: null,
  qs_rootpass: ,
  qs_mac: ,
  qs_os: ubuntu24,
  qs_version: Ubuntu,
  qs_location: 1,
  qs_platform: null
)
```

