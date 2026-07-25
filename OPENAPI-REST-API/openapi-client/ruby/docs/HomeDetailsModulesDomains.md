# InterServerClient::HomeDetailsModulesDomains

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for domains. | [optional] |
| **view_link** | **String** | Link to view domain. | [optional] |
| **heading** | **String** | Heading for domains. | [optional] |
| **buy_link** | **String** | Link to order domain. | [optional] |
| **list_link** | **String** | Link to view domains list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesDomains.new(
  icon: globe,
  view_link: view_domain,
  heading: Domains,
  buy_link: domain_order,
  list_link: view_domains_list
)
```

