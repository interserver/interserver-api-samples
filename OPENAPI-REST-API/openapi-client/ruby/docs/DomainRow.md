# InterServerClient::DomainRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** | The ID number of the domain in our billing system. | [optional] |
| **domain_hostname** | **String** | The hostname of the domain. | [optional] |
| **domain_expire_date** | **String** | The expiration date of the domain. | [optional] |
| **cost** | **String** | The cost of the domain. | [optional] |
| **domain_status** | **String** | The billing / registration status of the domain. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainRow.new(
  domain_id: 59237,
  domain_hostname: mydomain.com,
  domain_expire_date: 2023-08-14T00:59:38.000Z,
  cost: 11.00,
  domain_status: active
)
```

