# InterServerClient::ServersBuyNowError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Always false for error responses. | [optional] |
| **text** | **String** | Human-readable error summary. | [optional] |
| **errors** | **Array&lt;String&gt;** | List of specific validation error messages. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServersBuyNowError.new(
  success: false,
  text: Unable to place order.,
  errors: [&quot;Server ID is missing.&quot;,&quot;Server Hostname is missing.;&quot;,&quot;Password must contain atleast 8 characters, one lowercase letter, one uppercase letter, one number &amp; one special character&quot;]
)
```

