# InterServerClient::ServerBulkIpmiPowerResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Server ID this result corresponds to. | [optional] |
| **asset** | **Integer** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] |
| **text** | **String** | IPMI power-status output for this server. | [optional] |
| **error** | **String** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerBulkIpmiPowerResponseResultsInner.new(
  id: 2313,
  asset: 5432,
  text: Chassis Power is on,
  error: Service is not active
)
```

