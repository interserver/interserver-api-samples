# InterServerClient::HomeServicesWebhosting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**HomeServicesWebhostingLinks**](HomeServicesWebhostingLinks.md) |  | [optional] |
| **count** | **Integer** | Number of web hosting services. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeServicesWebhosting.new(
  links: null,
  count: 8
)
```

