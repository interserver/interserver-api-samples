# InterServerClient::VpsOrderPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_distro** | **String** | OS Distribution |  |
| **slices** | **Integer** | Number of slices | [default to 1] |
| **vps_platform** | **String** | VPS Platform |  |
| **period** | **Integer** | Billing Period or Frequency | [default to 1] |
| **location** | **Integer** | Location | [default to 1] |
| **os_version** | **String** | OS Version |  |
| **hostname** | **String** | The hostname to assign to the VPS | [default to &#39;&#39;] |
| **rootpass** | **String** | Root password to assign to the VVPS |  |
| **controlpanel** | **String** | Control Panel | [optional] |
| **coupon** | **String** | Coupon | [optional][default to &#39;&#39;] |
| **comment** | **String** | Order comments or notes | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsOrderPutRequest.new(
  os_distro: null,
  slices: null,
  vps_platform: null,
  period: null,
  location: null,
  os_version: null,
  hostname: null,
  rootpass: null,
  controlpanel: null,
  coupon: null,
  comment: null
)
```

