# InterServerClient::VpsServiceExtra

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spice** | **Integer** | Spice | [optional] |
| **snapshots** | [**Array&lt;VpsSnapshot&gt;**](VpsSnapshot.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsServiceExtra.new(
  spice: 5903,
  snapshots: null
)
```

