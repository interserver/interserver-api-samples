# InterServerClient::VpsOrderPlatformNames

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kvm** | **String** |  | [optional] |
| **kvmstorage** | **String** |  | [optional] |
| **hyperv** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsOrderPlatformNames.new(
  kvm: KVM,
  kvmstorage: KVM Storage,
  hyperv: HyperV
)
```

