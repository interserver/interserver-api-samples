# InterServerClient::ServerNetworkInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vlans** | **Array&lt;String&gt;** | List of VLANs. |  |
| **vlans6** | **Array&lt;String&gt;** | List of IPv6 VLANs. |  |
| **assets** | [**ServerNetworkInfoAssets**](ServerNetworkInfoAssets.md) |  |  |
| **switchports** | [**ServerNetworkInfoSwitchports**](ServerNetworkInfoSwitchports.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerNetworkInfo.new(
  vlans: [],
  vlans6: [],
  assets: null,
  switchports: null
)
```

