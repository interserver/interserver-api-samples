# InterServerClient::WebsiteOrderPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hostname** | **String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. |  |
| **package_id** | **Integer** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). |  |
| **rootpass** | **String** | Control-panel admin password. If blank, a random password is generated server-side. | [optional][default to &#39;&#39;] |
| **period** | **Integer** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional][default to 1] |
| **coupon** | **String** | Coupon code. | [optional][default to &#39;&#39;] |
| **service_offer_id** | **Integer** | Promo bundle id from getNewWebsite.serviceOffers. | [optional][default to 0] |
| **script** | **Integer** | Auto-installer id (0 &#x3D; none). | [optional][default to 0] |
| **comment** | **String** | Free-form note saved on the service row. | [optional][default to &#39;&#39;] |
| **register_domain** | **Boolean** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional][default to false] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsiteOrderPutRequest.new(
  hostname: null,
  package_id: null,
  rootpass: null,
  period: null,
  coupon: null,
  service_offer_id: null,
  script: null,
  comment: null,
  register_domain: null
)
```

