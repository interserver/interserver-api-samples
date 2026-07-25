# InterServerClient::MailClientLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The label of the client link. | [optional] |
| **link** | **String** | The link URL of the client link. | [optional] |
| **icon** | **String** | The icon class of the client link. | [optional] |
| **icon_text** | **String** | The text for the icon of the client link. | [optional] |
| **help_text** | **String** | Help text for the client link. | [optional] |
| **other_attr** | **String** | Additional attributes for the client link. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailClientLink.new(
  label: Invoices,
  link: invoices,
  icon: fas fa-file-invoice-dollar fa-w-12,
  icon_text: ,
  help_text: Invoice History,
  other_attr: 
)
```

