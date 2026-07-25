# InterServerClient::MailBlocks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **local** | [**Array&lt;MailBlockClickHouse&gt;**](MailBlockClickHouse.md) |  |  |
| **mbtrap** | [**Array&lt;MailBlockClickHouse&gt;**](MailBlockClickHouse.md) |  |  |
| **subject** | [**Array&lt;MailBlockRspamd&gt;**](MailBlockRspamd.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailBlocks.new(
  local: null,
  mbtrap: null,
  subject: null
)
```

