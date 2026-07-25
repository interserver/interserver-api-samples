# InterServerClient::QsOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server** | **Integer** | QuickServer plan/server id from getNewQs. |  |
| **password** | **String** | Root password for the QuickServer. |  |
| **tos** | **Boolean** | Terms-of-service acceptance. Must be true to place the order. |  |
| **os** | **String** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional][default to &#39;&#39;] |
| **comment** | **String** | Free-form note saved on the service row. | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QsOrderRequest.new(
  server: null,
  password: null,
  tos: null,
  os: null,
  comment: null
)
```

