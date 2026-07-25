# InterServerClient::QuickserverAddons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Table title | [optional] |
| **rows** | [**Array&lt;QuickserverAddonsRow&gt;**](QuickserverAddonsRow.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverAddons.new(
  title: Addons,
  rows: null
)
```

