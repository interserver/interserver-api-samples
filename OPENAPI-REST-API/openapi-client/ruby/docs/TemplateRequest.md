# InterServerClient::TemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **String** | OS Template Filename |  |
| **local_password** | **String** | Password for this account. |  |
| **password** | **String** | Password for Root / Administrator Account. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TemplateRequest.new(
  template: ubuntu24,
  local_password: null,
  password: myUserPassword
)
```

