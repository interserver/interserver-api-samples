# InterServerClient::SendMail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | The Contact whom is the primary recipient of this email. |  |
| **from** | **String** | The contact whom is the this email is from. |  |
| **subject** | **String** | The subject or title of the email |  |
| **body** | **String** | The main email contents. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::SendMail.new(
  to: johndoe@company.com,
  from: janedoe@company.com,
  subject: Attention Client,
  body: This is an email to inform you that something noteworthy happened.
)
```

