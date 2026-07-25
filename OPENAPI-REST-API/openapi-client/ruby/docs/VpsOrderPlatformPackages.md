# InterServerClient::VpsOrderPlatformPackages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kvm** | **Float** |  | [optional] |
| **kvmstorage** | **Float** |  | [optional] |
| **hyperv** | **Float** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsOrderPlatformPackages.new(
  kvm: 32,
  kvmstorage: 57,
  hyperv: 54
)
```

