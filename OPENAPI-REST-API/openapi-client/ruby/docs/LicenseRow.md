# InterServerClient::LicenseRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** | The id of the license. | [optional] |
| **license_hostname** | **String** | The hostname of the license. | [optional] |
| **license_ip** | **String** | The ip of the license. | [optional] |
| **services_name** | **String** | The services name of the license. | [optional] |
| **cost** | **String** | The cost of the license. | [optional] |
| **license_status** | **String** | The status of the license. | [optional] |
| **invoices_paid** | **String** | The invoices paid of the license. | [optional] |
| **invoices_date** | **Time** | The invoices date of the license. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseRow.new(
  license_id: 386111,
  license_hostname: ,
  license_ip: 66.45.228.100,
  services_name: Imunify360 up to 30 users,
  cost: 25.00,
  license_status: canceled,
  invoices_paid: 1,
  invoices_date: 2019-08-28T14:27:22Z
)
```

