# WebsitesOrder

Schema for the WebsitesOrder object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**step** | **string** | Step description | [default to undefined]
**website** | **string** | Website description | [default to undefined]
**period** | **number** | Period description | [default to undefined]
**serviceOfferId** | **number** | Service offer ID description | [default to undefined]
**packages** | [**WebsitesOrderPackages**](WebsitesOrderPackages.md) |  | [default to undefined]
**enableDomainRegistering** | **boolean** | Enable domain registering description | [default to undefined]
**jsonServices** | [**WebsitesOrderJsonServices**](WebsitesOrderJsonServices.md) |  | [default to undefined]
**jsonServiceOffers** | [**WebsitesOrderJsonServiceOffers**](WebsitesOrderJsonServiceOffers.md) |  | [default to undefined]
**serviceTypes** | [**WebsitesOrderServiceTypes**](WebsitesOrderServiceTypes.md) |  | [default to undefined]
**serviceOffers** | [**WebsitesOrderServiceOffers**](WebsitesOrderServiceOffers.md) |  | [default to undefined]
**packges** | [**WebsitesOrderPackges**](WebsitesOrderPackges.md) |  | [optional] [default to undefined]

## Example

```typescript
import { WebsitesOrder } from '@interserver/myadmin-client';

const instance: WebsitesOrder = {
    step,
    website,
    period,
    serviceOfferId,
    packages,
    enableDomainRegistering,
    jsonServices,
    jsonServiceOffers,
    serviceTypes,
    serviceOffers,
    packges,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
