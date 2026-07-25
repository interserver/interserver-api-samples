# InterServerClient::ServerLocation1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **Integer** |  |  |
| **location_name** | **String** |  |  |
| **location_lat** | **String** |  |  |
| **location_long** | **String** |  |  |
| **location_description** | **String** |  | [optional] |
| **location_ipmi_group** | **Integer** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerLocation1.new(
  location_id: null,
  location_name: null,
  location_lat: null,
  location_long: null,
  location_description: null,
  location_ipmi_group: null
)
```

