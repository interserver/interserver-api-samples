# InterServerClient::BackupClientLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Label of the client link. | [optional] |
| **link** | **String** | Link URL of the client link. | [optional] |
| **icon** | **String** | Icon of the client link. | [optional] |
| **icon_text** | **String** | Icon text of the client link. | [optional] |
| **help_text** | **String** | Help text of the client link. | [optional] |
| **other_attr** | **String** | Other attributes of the client link. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupClientLink.new(
  label: null,
  link: null,
  icon: null,
  icon_text: null,
  help_text: null,
  other_attr: null
)
```

