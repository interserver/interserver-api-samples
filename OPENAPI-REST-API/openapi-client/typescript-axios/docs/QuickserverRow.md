# QuickserverRow

A result row from the `Quickservers` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **string** | The id of the qs. | [default to undefined]
**qs_name** | **string** | The name of the qs. | [default to undefined]
**cost** | **string** | The cost of the qs. | [default to undefined]
**qs_hostname** | **string** | The hostname of the qs. | [default to undefined]
**qs_status** | **string** | The status of the qs. | [default to undefined]
**qs_comment** | **string** | The comment of the qs. | [default to undefined]

## Example

```typescript
import { QuickserverRow } from '@interserver/myadmin-client';

const instance: QuickserverRow = {
    qs_id,
    qs_name,
    cost,
    qs_hostname,
    qs_status,
    qs_comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
