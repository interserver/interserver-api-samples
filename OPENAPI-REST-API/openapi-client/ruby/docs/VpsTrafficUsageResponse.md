# InterServerClient::VpsTrafficUsageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  |  |
| **peak** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  |  |
| **average** | [**VpsTrafficUsageAverageResponse**](VpsTrafficUsageAverageResponse.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsTrafficUsageResponse.new(
  current: null,
  peak: null,
  average: null
)
```

