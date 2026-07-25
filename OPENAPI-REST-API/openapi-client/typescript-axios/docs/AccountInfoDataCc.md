# AccountInfoDataCc

Credit card information stored on the account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cc** | **string** |  | [optional] [default to undefined]
**cc_exp** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**address** | **string** |  | [optional] [default to undefined]
**city** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**zip** | **string** |  | [optional] [default to undefined]
**country** | **string** |  | [optional] [default to undefined]
**maxmind_riskscore** | **string** |  | [optional] [default to undefined]
**maxmind** | [**AccountInfoMaxMindResponse**](AccountInfoMaxMindResponse.md) |  | [optional] [default to undefined]
**verified** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { AccountInfoDataCc } from '@interserver/myadmin-client';

const instance: AccountInfoDataCc = {
    cc,
    cc_exp,
    name,
    address,
    city,
    state,
    zip,
    country,
    maxmind_riskscore,
    maxmind,
    verified,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
