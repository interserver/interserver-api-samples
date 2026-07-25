# InterServerClient::HomeServicesVps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**HomeServicesVpsLinks**](HomeServicesVpsLinks.md) |  | [optional] |
| **count** | **Integer** | Number of VPS services. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeServicesVps.new(
  links: null,
  count: 20
)
```

