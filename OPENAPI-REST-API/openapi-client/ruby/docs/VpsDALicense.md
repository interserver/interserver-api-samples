# InterServerClient::VpsDALicense

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | License tier name. | [optional] |
| **sub_name** | **String** | License tier sub-name. | [optional] |
| **cost** | **Integer** | Monthly cost in cents. | [optional] |
| **img_disabled** | **String** | Image path for the disabled state icon. | [optional] |
| **img_active** | **String** | Image path for the active state icon. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsDALicense.new(
  name: null,
  sub_name: null,
  cost: null,
  img_disabled: null,
  img_active: null
)
```

