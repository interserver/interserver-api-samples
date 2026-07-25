# InterServerClient::ServerServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The ID of the server. | [optional] |
| **server_hostname** | **String** | The hostname of the server. | [optional] |
| **server_custid** | **String** | The customer ID associated with the server. | [optional] |
| **server_type** | **String** | The type of the server. | [optional] |
| **server_currency** | **String** | The currency used for billing. | [optional] |
| **server_order_date** | **String** | The date when the server was ordered. | [optional] |
| **server_invoice** | **String** | The invoice number for the server. | [optional] |
| **server_coupon** | **String** | The coupon associated with the server. | [optional] |
| **server_status** | **String** | The status of the server. | [optional] |
| **server_root** | **String** | The root of the server. | [optional] |
| **server_dedicated_tag** | **String** | The dedicated tag of the server. | [optional] |
| **server_custom_tag** | **String** | The custom tag of the server. | [optional] |
| **server_comment** | **String** | Comments related to the server. | [optional] |
| **server_initial_bill** | **String** | The initial billing amount for the server. | [optional] |
| **server_hardware** | **String** | The hardware information of the server. | [optional] |
| **server_ips** | **String** | The number of IPs associated with the server. | [optional] |
| **server_monthly_bill** | **String** | The monthly billing amount for the server. | [optional] |
| **server_setup** | **String** | The setup status of the server. | [optional] |
| **server_discount** | **String** | Discount information for the server. | [optional] |
| **server_rep** | **String** | The reputation of the server. | [optional] |
| **server_date** | **String** | The date related to the server. | [optional] |
| **server_total_cost** | **String** | The total cost of the server. | [optional] |
| **server_location** | **String** | The location of the server. | [optional] |
| **server_hardware_ordered** | **String** | The ordered hardware for the server. | [optional] |
| **server_billed** | **String** | The billed amount for the server. | [optional] |
| **server_welcome_email** | **String** | Indicates whether a welcome email was sent. | [optional] |
| **server_dedicated_cpu** | **String** | The number of dedicated CPUs for the server. | [optional] |
| **server_dedicated_memory** | **String** | The amount of dedicated memory for the server. | [optional] |
| **server_dedicated_hd1** | **String** | The size of the first dedicated hard drive. | [optional] |
| **server_dedicated_hd2** | **String** | The size of the second dedicated hard drive. | [optional] |
| **server_dedicated_bandwidth** | **String** | The bandwidth of the server. | [optional] |
| **server_dedicated_ips** | **String** | The number of dedicated IPs for the server. | [optional] |
| **server_dedicated_os** | **String** | The operating system of the server. | [optional] |
| **server_dedicated_cp** | **String** | The control panel of the server. | [optional] |
| **server_dedicated_raid** | **String** | The RAID configuration of the server. | [optional] |
| **server_extra** | **String** | Additional information about the server. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerServiceInfo.new(
  server_id: 16058,
  server_hostname: myserver.host.com,
  server_custid: 771282,
  server_type: 600,
  server_currency: USD,
  server_order_date: 2020-05-08T17:22:36.000Z,
  server_invoice: 18738142,
  server_coupon: 0,
  server_status: active,
  server_root: ,
  server_dedicated_tag: 0,
  server_custom_tag: ,
  server_comment: ,
  server_initial_bill: 0,
  server_hardware: 0,
  server_ips: 0,
  server_monthly_bill: 0,
  server_setup: 0,
  server_discount: null,
  server_rep: 0,
  server_date: 1588972956,
  server_total_cost: 230,
  server_location: null,
  server_hardware_ordered: 0,
  server_billed: 0,
  server_welcome_email: 1,
  server_dedicated_cpu: 38,
  server_dedicated_memory: 22,
  server_dedicated_hd1: 20,
  server_dedicated_hd2: null,
  server_dedicated_bandwidth: 3,
  server_dedicated_ips: 5,
  server_dedicated_os: 30,
  server_dedicated_cp: null,
  server_dedicated_raid: 0,
  server_extra: []
)
```

