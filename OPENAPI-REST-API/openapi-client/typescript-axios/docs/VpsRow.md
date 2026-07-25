# VpsRow

A result row from the `Vps` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps_id** | **string** | The id of the vps. | [default to undefined]
**vps_name** | **string** | The name of the vps. | [default to undefined]
**repeat_invoices_cost** | **string** | The repeat invoices cost of the vps. | [default to undefined]
**vps_hostname** | **string** | The hostname of the vps. | [default to undefined]
**vps_ip** | **string** | The ip of the vps. | [default to undefined]
**vps_status** | **string** | The status of the vps. | [default to undefined]
**services_name** | **string** | The services name of the vps. | [default to undefined]
**vps_comment** | **string** | The comment of the vps. | [default to undefined]

## Example

```typescript
import { VpsRow } from '@interserver/myadmin-client';

const instance: VpsRow = {
    vps_id,
    vps_name,
    repeat_invoices_cost,
    vps_hostname,
    vps_ip,
    vps_status,
    services_name,
    vps_comment,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
