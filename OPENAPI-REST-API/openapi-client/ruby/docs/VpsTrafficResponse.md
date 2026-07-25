# InterServerClient::VpsTrafficResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **target** | **String** |  |  |
| **interval** | **Integer** |  |  |
| **history** | [**VpsTrafficHistoryResponse**](VpsTrafficHistoryResponse.md) |  |  |
| **last** | **Time** |  |  |
| **times** | **Array&lt;Time&gt;** |  |  |
| **totals** | [**VpsTrafficTotalsResposne**](VpsTrafficTotalsResposne.md) |  |  |
| **usage** | [**VpsTrafficUsageResponse**](VpsTrafficUsageResponse.md) |  |  |
| **data** | [**Array&lt;VpsTrafficDataSectionResponse&gt;**](VpsTrafficDataSectionResponse.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsTrafficResponse.new(
  name: null,
  target: null,
  interval: null,
  history: null,
  last: null,
  times: null,
  totals: null,
  usage: null,
  data: null
)
```

