# ChargeInvoiceRows

Billing invoices associated with a service, including invoice IDs, descriptions, amounts, and payment status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** | Whether the invoice retrieval was successful. | [optional] [default to undefined]
**invoices** | [**{ [key: string]: ChargeInvoiceRowsInvoicesValue; }**](ChargeInvoiceRowsInvoicesValue.md) | List of invoices for the service. | [optional] [default to undefined]

## Example

```typescript
import { ChargeInvoiceRows } from '@interserver/myadmin-client';

const instance: ChargeInvoiceRows = {
    success,
    invoices,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
