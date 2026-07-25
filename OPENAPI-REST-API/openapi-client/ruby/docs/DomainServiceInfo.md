# InterServerClient::DomainServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  | [optional] |
| **domain_hostname** | **String** |  | [optional] |
| **domain_username** | **String** |  | [optional] |
| **domain_password** | **String** |  | [optional] |
| **domain_type** | **String** |  | [optional] |
| **domain_currency** | **String** |  | [optional] |
| **domain_expire_date** | **String** |  | [optional] |
| **domain_order_date** | **String** |  | [optional] |
| **domain_custid** | **String** |  | [optional] |
| **domain_status** | **String** |  | [optional] |
| **domain_invoice** | **String** |  | [optional] |
| **domain_coupon** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainServiceInfo.new(
  domain_id: null,
  domain_hostname: null,
  domain_username: null,
  domain_password: null,
  domain_type: null,
  domain_currency: null,
  domain_expire_date: null,
  domain_order_date: null,
  domain_custid: null,
  domain_status: null,
  domain_invoice: null,
  domain_coupon: null
)
```

