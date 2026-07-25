# InterServerClient::MailOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_type** | **Integer** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). |  |
| **coupon** | **String** | Coupon code. | [optional][default to &#39;&#39;] |
| **comment** | **String** | Free-form note saved on the service row (used on addMail). | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailOrderRequest.new(
  service_type: null,
  coupon: null,
  comment: null
)
```

