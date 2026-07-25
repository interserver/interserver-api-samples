# Home


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_login_ip** | **string** | Last login IP. | [default to undefined]
**last_login** | **string** | Last login time. | [default to undefined]
**currency** | **string** | Currency symbol. | [default to undefined]
**amount** | **string** | Amount with currency. | [default to undefined]
**invoice_list** | **number** | Number of invoices. | [default to undefined]
**balance** | **string** | Balance with currency. | [default to undefined]
**full_name** | **string** | Users full name. | [default to undefined]
**email** | **string** | User email address. | [default to undefined]
**tickets** | **Array&lt;string&gt;** | List of tickets. | [default to undefined]
**ticketStatus** | [**HomeTicketStatus**](HomeTicketStatus.md) |  | [default to undefined]
**ticketStatusView** | [**HomeTicketStatusView**](HomeTicketStatusView.md) |  | [default to undefined]
**details** | [**HomeDetails**](HomeDetails.md) |  | [default to undefined]
**services** | [**HomeServices**](HomeServices.md) |  | [default to undefined]
**AFFILIATE_AMOUNT** | **string** | Affiliate amount with currency. | [default to undefined]

## Example

```typescript
import { Home } from '@interserver/myadmin-client';

const instance: Home = {
    last_login_ip,
    last_login,
    currency,
    amount,
    invoice_list,
    balance,
    full_name,
    email,
    tickets,
    ticketStatus,
    ticketStatusView,
    details,
    services,
    AFFILIATE_AMOUNT,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
