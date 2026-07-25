# InterServerClient::WebsiteClientLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Label for the link | [optional] |
| **link** | **String** | Link URL | [optional] |
| **icon** | **String** | Icon for the link | [optional] |
| **icon_text** | **String** | Icon text for the link | [optional] |
| **help_text** | **String** | Help text for the link | [optional] |
| **other_attr** | **String** | Other attributes for the link | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsiteClientLink.new(
  label: null,
  link: null,
  icon: null,
  icon_text: null,
  help_text: null,
  other_attr: null
)
```

