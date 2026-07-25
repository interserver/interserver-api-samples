# WebsitesOrderServiceOffer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_offer_id** | **string** | The ID of the service offer. | [default to undefined]
**service_id** | **string** | The ID of the associated service. | [default to undefined]
**intro_cost** | **string** | The introductory cost of the service offer. | [default to undefined]
**renewal_cost** | **string** | The renewal cost of the service offer. | [default to undefined]
**intro_frequency** | **string** | The introductory frequency of the service offer. | [default to undefined]
**renewal_frequency** | **string** | The renewal frequency of the service offer. | [default to undefined]
**allow_coupon** | **string** | Indicates if coupons are allowed (1 for yes, 0 for no). | [default to undefined]
**service_module** | **string** | The module of the service offer. | [default to undefined]
**created_at** | **string** | The creation timestamp of the service offer. | [default to undefined]
**updated_at** | **string** | The update timestamp of the service offer. | [optional] [default to undefined]
**deleted_at** | **string** | The deletion timestamp of the service offer. | [optional] [default to undefined]

## Example

```typescript
import { WebsitesOrderServiceOffer } from '@interserver/myadmin-client';

const instance: WebsitesOrderServiceOffer = {
    service_offer_id,
    service_id,
    intro_cost,
    renewal_cost,
    intro_frequency,
    renewal_frequency,
    allow_coupon,
    service_module,
    created_at,
    updated_at,
    deleted_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
