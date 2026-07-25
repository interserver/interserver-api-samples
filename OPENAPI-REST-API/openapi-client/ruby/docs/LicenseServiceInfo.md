# InterServerClient::LicenseServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** | License ID |  |
| **license_type** | **String** | License type |  |
| **license_currency** | **String** | License currency |  |
| **license_order_date** | **Time** | License order date |  |
| **license_custid** | **String** | Customer ID |  |
| **license_ip** | **String** | License IP |  |
| **license_status** | **String** | License status |  |
| **license_invoice** | **String** | License invoice |  |
| **license_coupon** | **String** | License coupon |  |
| **license_hostname** | **String** | License hostname | [optional] |
| **license_key** | **String** | License key | [optional] |
| **license_extra** | **String** | Additional license information | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseServiceInfo.new(
  license_id: 386522,
  license_type: 5034,
  license_currency: USD,
  license_order_date: 2020-01-14T10:48:14Z,
  license_custid: 771282,
  license_ip: 1.2.3.4,
  license_status: active,
  license_invoice: 18704419,
  license_coupon: 1836,
  license_hostname: ,
  license_key: ,
  license_extra: 
)
```

