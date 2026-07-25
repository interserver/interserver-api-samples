# InterServerClient::PostWebsiteMigration200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Confirmation message. | [optional] |
| **ticket** | **Integer** | The support ticket ID created for tracking the migration. Use this with &#x60;/tickets/{id}&#x60; to check migration progress. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PostWebsiteMigration200Response.new(
  text: null,
  ticket: null
)
```

