# BillingAddCcRequest

Request to add a new creditcard into the system.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**address** | **string** |  | [optional] [default to undefined]
**city** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**country** | **string** |  | [optional] [default to undefined]
**zip** | **string** |  | [optional] [default to undefined]
**cc** | **string** |  | [optional] [default to undefined]
**cc_exp** | **string** |  | [optional] [default to undefined]
**cc_ccv2** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { BillingAddCcRequest } from '@interserver/myadmin-client';

const instance: BillingAddCcRequest = {
    name,
    address,
    city,
    state,
    country,
    zip,
    cc,
    cc_exp,
    cc_ccv2,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
