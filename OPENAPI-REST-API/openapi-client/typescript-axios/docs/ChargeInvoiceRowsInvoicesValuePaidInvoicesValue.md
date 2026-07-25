# ChargeInvoiceRowsInvoicesValuePaidInvoicesValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices_id** | **string** |  | [optional] [default to undefined]
**invoices_description** | **string** |  | [optional] [default to undefined]
**invoices_amount** | **number** |  | [optional] [default to undefined]
**invoices_date** | **string** |  | [optional] [default to undefined]
**invoices_currency** | **string** |  | [optional] [default to undefined]
**currency_symbol** | **string** |  | [optional] [default to undefined]
**invoices_date_formatted** | **string** |  | [optional] [default to undefined]
**payment_type** | **string** |  | [optional] [default to undefined]
**refund_invoices** | [**{ [key: string]: ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue; }**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.md) | This is optional when refund is present this will show | [optional] [default to undefined]

## Example

```typescript
import { ChargeInvoiceRowsInvoicesValuePaidInvoicesValue } from '@interserver/myadmin-client';

const instance: ChargeInvoiceRowsInvoicesValuePaidInvoicesValue = {
    invoices_id,
    invoices_description,
    invoices_amount,
    invoices_date,
    invoices_currency,
    currency_symbol,
    invoices_date_formatted,
    payment_type,
    refund_invoices,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
