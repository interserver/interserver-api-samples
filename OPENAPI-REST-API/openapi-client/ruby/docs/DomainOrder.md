# InterServerClient::DomainOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whois_privacy_cost** | **String** | Cost of Whois Privacy | [optional] |
| **services** | [**DomainOrderServices**](DomainOrderServices.md) |  | [optional] |
| **tld_services** | **Object** | Map of TLDs to domain service IDs. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainOrder.new(
  whois_privacy_cost: 5,
  services: null,
  tld_services: null
)
```

