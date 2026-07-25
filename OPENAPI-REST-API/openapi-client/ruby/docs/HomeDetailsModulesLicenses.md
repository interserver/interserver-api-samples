# InterServerClient::HomeDetailsModulesLicenses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The icon for licenses. | [optional] |
| **view_link** | **String** | Link to view license. | [optional] |
| **heading** | **String** | Heading for licenses. | [optional] |
| **buy_link** | **String** | Link to order license. | [optional] |
| **list_link** | **String** | Link to view licenses list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeDetailsModulesLicenses.new(
  icon: id-card,
  view_link: view_license,
  heading: Licenses,
  buy_link: order_license,
  list_link: view_licenses_list
)
```

