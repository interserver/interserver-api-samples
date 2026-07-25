# InterServerClient::WebsiteServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | Website ID | [optional] |
| **website_server** | **String** | Website server | [optional] |
| **website_type** | **String** | Website type | [optional] |
| **website_currency** | **String** | Currency of the website | [optional] |
| **website_order_date** | **String** | Order date of the website | [optional] |
| **website_custid** | **String** | Customer ID of the website | [optional] |
| **website_ip** | **String** | IP address of the website | [optional] |
| **website_status** | **String** | Status of the website | [optional] |
| **website_invoice** | **String** | Invoice of the website | [optional] |
| **website_coupon** | **String** | Coupon for the website | [optional] |
| **website_extra** | **String** | Extra information in JSON format for the website | [optional] |
| **website_hostname** | **String** | Hostname of the website | [optional] |
| **website_comment** | **String** | Comment for the website | [optional] |
| **website_username** | **String** | Username for the website | [optional] |
| **website_server_status** | **String** | Server status of the website | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsiteServiceInfo.new(
  website_id: 1196829,
  website_server: 543,
  website_type: 11363,
  website_currency: USD,
  website_order_date: 2023-03-16T22:51:54.000Z,
  website_custid: 85872,
  website_ip: 74.50.80.15,
  website_status: active,
  website_invoice: 20261994,
  website_coupon: 1690,
  website_extra: [],
  website_hostname: vintagevultures.com,
  website_comment: null,
  website_username: vintagev,
  website_server_status: null
)
```

