# InterServerClient::HomeServicesDomains

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**HomeServicesDomainsLinks**](HomeServicesDomainsLinks.md) |  | [optional] |
| **count** | **Integer** | Number of domains. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeServicesDomains.new(
  links: null,
  count: 5
)
```

