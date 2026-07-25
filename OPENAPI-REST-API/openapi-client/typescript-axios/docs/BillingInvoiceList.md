# BillingInvoiceList

Summary list of invoices for the account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rows** | **Array&lt;object&gt;** | Invoice rows returned for the account. | [optional] [default to undefined]
**summary** | **object** | Totals and summary data for the invoices list. | [optional] [default to undefined]

## Example

```typescript
import { BillingInvoiceList } from '@interserver/myadmin-client';

const instance: BillingInvoiceList = {
    rows,
    summary,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
