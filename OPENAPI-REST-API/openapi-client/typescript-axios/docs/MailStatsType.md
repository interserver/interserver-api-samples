# MailStatsType

Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **string** |  | [optional] [default to TimeEnum__1h]
**usage** | **number** |  | [optional] [default to undefined]
**currency** | **string** |  | [optional] [default to undefined]
**currencySymbol** | **string** |  | [optional] [default to undefined]
**cost** | **number** |  | [optional] [default to undefined]
**received** | **number** |  | [optional] [default to undefined]
**sent** | **number** |  | [optional] [default to undefined]
**volume** | [**MailStatsTypeVolume**](MailStatsTypeVolume.md) |  | [optional] [default to undefined]

## Example

```typescript
import { MailStatsType } from '@interserver/myadmin-client';

const instance: MailStatsType = {
    time,
    usage,
    currency,
    currencySymbol,
    cost,
    received,
    sent,
    volume,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
