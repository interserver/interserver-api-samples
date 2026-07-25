# InterServerClient::GetOrderDetail200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_costs** | [**GetOrderDetail200ResponsePackageCosts**](GetOrderDetail200ResponsePackageCosts.md) |  | [optional] |
| **service_types** | [**Array&lt;GetOrderDetail200ResponseServiceTypesInner&gt;**](GetOrderDetail200ResponseServiceTypesInner.md) |  | [optional] |
| **ips** | [**Array&lt;GetOrderDetail200ResponseIpsInner&gt;**](GetOrderDetail200ResponseIpsInner.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetOrderDetail200Response.new(
  package_costs: null,
  service_types: null,
  ips: null
)
```

