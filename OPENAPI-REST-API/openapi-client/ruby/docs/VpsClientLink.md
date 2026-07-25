# InterServerClient::VpsClientLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Display label for the link. | [optional] |
| **link** | **String** | URL or route for the action. | [optional] |
| **icon** | **String** | Icon class for the link. | [optional] |
| **icon_text** | **String** | Icon text label. | [optional] |
| **help_text** | **String** | Help tooltip text for the link. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsClientLink.new(
  label: null,
  link: null,
  icon: null,
  icon_text: null,
  help_text: null
)
```

