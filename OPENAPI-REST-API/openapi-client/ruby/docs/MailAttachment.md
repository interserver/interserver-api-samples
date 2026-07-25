# InterServerClient::MailAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | The filename of the attached file. |  |
| **data** | **String** | The file contents base64 encoded |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailAttachment.new(
  filename: message.txt,
  data: aGVsbG8gdGhlcmUK
)
```

