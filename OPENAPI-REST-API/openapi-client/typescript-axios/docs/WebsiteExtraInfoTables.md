# WebsiteExtraInfoTables

Supplementary information tables displayed for a webhosting service (links, DNS, preview).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] [default to undefined]
**preview** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] [default to undefined]
**dns** | [**WebsiteTable**](WebsiteTable.md) |  | [optional] [default to undefined]

## Example

```typescript
import { WebsiteExtraInfoTables } from '@interserver/myadmin-client';

const instance: WebsiteExtraInfoTables = {
    links,
    preview,
    dns,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
