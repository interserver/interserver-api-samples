# ServerRow

A result row from the `Servers` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **string** | The id of the server. | [default to undefined]
**account_lid** | **string** | The account lid of the server. | [default to undefined]
**server_hostname** | **string** | The hostname of the server. | [default to undefined]
**server_status** | **string** | The status of the server. | [default to undefined]

## Example

```typescript
import { ServerRow } from '@interserver/myadmin-client';

const instance: ServerRow = {
    server_id,
    account_lid,
    server_hostname,
    server_status,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
