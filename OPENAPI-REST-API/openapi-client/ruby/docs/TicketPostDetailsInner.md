# InterServerClient::TicketPostDetailsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **Integer** |  | [optional] |
| **date** | **String** |  | [optional] |
| **contents** | **String** |  | [optional] |
| **creator** | **String** |  | [optional] |
| **creator_email** | **String** |  | [optional] |
| **creator_name** | **String** |  | [optional] |
| **hasattachments** | **Integer** |  | [optional] |
| **attachment_download** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TicketPostDetailsInner.new(
  post_id: null,
  date: null,
  contents: null,
  creator: null,
  creator_email: null,
  creator_name: null,
  hasattachments: null,
  attachment_download: null
)
```

