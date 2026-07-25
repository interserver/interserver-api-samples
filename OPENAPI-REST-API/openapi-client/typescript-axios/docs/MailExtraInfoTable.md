# MailExtraInfoTable

A supplementary information table for a mail service (e.g., connection details).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | The title of the extra info table. | [optional] [default to undefined]
**rows** | [**Array&lt;MailExtraInfoTableRow&gt;**](MailExtraInfoTableRow.md) | The rows of the extra info table. | [optional] [default to undefined]

## Example

```typescript
import { MailExtraInfoTable } from '@interserver/myadmin-client';

const instance: MailExtraInfoTable = {
    title,
    rows,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
