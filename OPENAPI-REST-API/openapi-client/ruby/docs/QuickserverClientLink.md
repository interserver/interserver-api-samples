# InterServerClient::QuickserverClientLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Link label | [optional] |
| **link** | **String** | Link | [optional] |
| **icon** | **String** | Icon class | [optional] |
| **icon_text** | **String** | Icon text | [optional] |
| **help_text** | **String** | Help text | [optional] |
| **other_attr** | **String** | Other attribute | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverClientLink.new(
  label: Invoices,
  link: invoices,
  icon: fas fa-file-invoice-dollar fa-w-12,
  icon_text: ,
  help_text: Invoice History,
  other_attr: null
)
```

