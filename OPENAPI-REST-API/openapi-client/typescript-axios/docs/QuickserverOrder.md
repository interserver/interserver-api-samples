# QuickserverOrder

Available QuickServer options and OS templates for ordering a new QuickServer.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **string** | Quickserver ID. | [optional] [default to undefined]
**server_details** | [**QuickserverOrderServerDetails**](QuickserverOrderServerDetails.md) |  | [optional] [default to undefined]
**templates** | [**QuickserverOrderTemplates**](QuickserverOrderTemplates.md) |  | [optional] [default to undefined]
**version** | [**QuickserverOrderVersion**](QuickserverOrderVersion.md) |  | [optional] [default to undefined]
**distro_sel** | [**QuickserverOrderDistroSel**](QuickserverOrderDistroSel.md) |  | [optional] [default to undefined]

## Example

```typescript
import { QuickserverOrder } from '@interserver/myadmin-client';

const instance: QuickserverOrder = {
    qs_id,
    server_details,
    templates,
    version,
    distro_sel,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
