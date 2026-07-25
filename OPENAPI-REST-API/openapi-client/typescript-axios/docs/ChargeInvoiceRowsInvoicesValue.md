# ChargeInvoiceRowsInvoicesValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **number** | Unique invoice ID. | [optional] [default to undefined]
**invoices_description** | **string** | Description of the invoice charge. | [optional] [default to undefined]
**invoices_amount** | **number** | Invoice amount. | [optional] [default to undefined]
**invoices_date** | **string** | Invoice date. | [optional] [default to undefined]
**invoices_paid** | **number** |  | [optional] [default to undefined]
**invoices_due_date** | **string** |  | [optional] [default to undefined]
**invoices_currency** | **string** |  | [optional] [default to undefined]
**currency_symbol** | **string** |  | [optional] [default to undefined]
**invoices_date_formatted** | **string** |  | [optional] [default to undefined]
**paid_invoices** | [**{ [key: string]: ChargeInvoiceRowsInvoicesValuePaidInvoicesValue; }**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] [default to undefined]

## Example

```typescript
import { ChargeInvoiceRowsInvoicesValue } from '@interserver/myadmin-client';

const instance: ChargeInvoiceRowsInvoicesValue = {
    invoices_id,
    invoices_description,
    invoices_amount,
    invoices_date,
    invoices_paid,
    invoices_due_date,
    invoices_currency,
    currency_symbol,
    invoices_date_formatted,
    paid_invoices,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
