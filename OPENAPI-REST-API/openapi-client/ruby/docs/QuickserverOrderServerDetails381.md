# InterServerClient::QuickserverOrderServerDetails381

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpu** | **String** | CPU details of the server. | [optional] |
| **ram** | **String** | RAM capacity of the server. | [optional] |
| **hd** | **String** | Hard disk capacity of the server. | [optional] |
| **cores** | **Integer** | Number of CPU cores. | [optional] |
| **cost** | **String** | Cost of the server. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverOrderServerDetails381.new(
  cpu: AMD Ryzen 9 5900X 12-Core Processor,
  ram: 119GB,
  hd: 1760GB,
  cores: 24,
  cost: $140.00
)
```

