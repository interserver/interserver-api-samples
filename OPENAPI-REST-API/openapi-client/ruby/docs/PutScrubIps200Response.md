# InterServerClient::PutScrubIps200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **continue** | **Boolean** |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |
| **service_type** | **Integer** |  | [optional] |
| **service_cost** | **Float** |  | [optional] |
| **original_cost** | **Float** |  | [optional] |
| **repeat_service_cost** | **Float** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PutScrubIps200Response.new(
  continue: null,
  errors: null,
  service_type: null,
  service_cost: null,
  original_cost: null,
  repeat_service_cost: null
)
```

