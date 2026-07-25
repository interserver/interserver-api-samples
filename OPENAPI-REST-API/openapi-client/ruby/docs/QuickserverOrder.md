# InterServerClient::QuickserverOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qs_id** | **String** | Quickserver ID. | [optional] |
| **server_details** | [**QuickserverOrderServerDetails**](QuickserverOrderServerDetails.md) |  | [optional] |
| **templates** | [**QuickserverOrderTemplates**](QuickserverOrderTemplates.md) |  | [optional] |
| **version** | [**QuickserverOrderVersion**](QuickserverOrderVersion.md) |  | [optional] |
| **distro_sel** | [**QuickserverOrderDistroSel**](QuickserverOrderDistroSel.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverOrder.new(
  qs_id: 221,
  server_details: null,
  templates: null,
  version: null,
  distro_sel: null
)
```

