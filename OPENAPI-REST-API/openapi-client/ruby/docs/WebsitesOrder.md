# InterServerClient::WebsitesOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **step** | **String** | Step description |  |
| **website** | **String** | Website description |  |
| **period** | **Integer** | Period description |  |
| **service_offer_id** | **Integer** | Service offer ID description |  |
| **packages** | [**WebsitesOrderPackages**](WebsitesOrderPackages.md) |  |  |
| **enable_domain_registering** | **Boolean** | Enable domain registering description |  |
| **json_services** | [**WebsitesOrderJsonServices**](WebsitesOrderJsonServices.md) |  |  |
| **json_service_offers** | [**WebsitesOrderJsonServiceOffers**](WebsitesOrderJsonServiceOffers.md) |  |  |
| **service_types** | [**WebsitesOrderServiceTypes**](WebsitesOrderServiceTypes.md) |  |  |
| **service_offers** | [**WebsitesOrderServiceOffers**](WebsitesOrderServiceOffers.md) |  |  |
| **packges** | [**WebsitesOrderPackges**](WebsitesOrderPackges.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsitesOrder.new(
  step: order_form,
  website: ,
  period: 1,
  service_offer_id: 0,
  packages: null,
  enable_domain_registering: false,
  json_services: null,
  json_service_offers: null,
  service_types: null,
  service_offers: null,
  packges: null
)
```

