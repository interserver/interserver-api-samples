# InterServerClient::ServerAssets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the assets. | [optional] |
| **size** | **Integer** | The size of the assets. | [optional] |
| **type** | **String** | The type of the assets. | [optional] |
| **header** | **Array&lt;String&gt;** | The header of the assets table. | [optional] |
| **rows** | **Array&lt;Array&lt;String&gt;&gt;** | The rows of the assets table. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerAssets.new(
  title: Assets,
  size: 2,
  type: table,
  header: null,
  rows: null
)
```

