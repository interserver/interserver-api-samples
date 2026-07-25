# InterServerClient::LicenseClientLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Link label |  |
| **link** | **String** | Link URL |  |
| **icon** | **String** | Link icon |  |
| **help_text** | **String** | Help text |  |
| **icon_text** | **String** | Icon text | [optional] |
| **other_attr** | **String** | Other attributes | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseClientLink.new(
  label: Invoices,
  link: invoices,
  icon: fas fa-file-invoice-dollar fa-w-12,
  help_text: Invoice History,
  icon_text: ,
  other_attr: 
)
```

