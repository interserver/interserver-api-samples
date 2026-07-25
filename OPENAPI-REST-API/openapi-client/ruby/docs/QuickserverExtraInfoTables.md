# InterServerClient::QuickserverExtraInfoTables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_info** | [**QuickserverIpInfo**](QuickserverIpInfo.md) |  | [optional] |
| **addons** | [**QuickserverAddons**](QuickserverAddons.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverExtraInfoTables.new(
  ip_info: null,
  addons: null
)
```

