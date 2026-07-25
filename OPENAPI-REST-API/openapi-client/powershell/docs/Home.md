# ModelHome
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastLoginIp** | **String** | Last login IP. | 
**LastLogin** | **String** | Last login time. | 
**Currency** | **String** | Currency symbol. | 
**Amount** | **String** | Amount with currency. | 
**InvoiceList** | **Int32** | Number of invoices. | 
**Balance** | **String** | Balance with currency. | 
**FullName** | **String** | Users full name. | 
**Email** | **String** | User email address. | 
**Tickets** | **String[]** | List of tickets. | 
**TicketStatus** | [**HomeTicketStatus**](HomeTicketStatus.md) |  | 
**TicketStatusView** | [**HomeTicketStatusView**](HomeTicketStatusView.md) |  | 
**Details** | [**HomeDetails**](HomeDetails.md) |  | 
**Services** | [**HomeServices**](HomeServices.md) |  | 
**AFFILIATEAMOUNT** | **String** | Affiliate amount with currency. | 

## Examples

- Prepare the resource
```powershell
$ModelHome = Initialize-InterserverApiModelHome  -LastLoginIp 99.88.77.66 `
 -LastLogin 14:58:pm - 17 Aug, 2023 `
 -Currency $ `
 -Amount $23.50 `
 -InvoiceList 5 `
 -Balance $0.60 `
 -FullName John `
 -Email user@domain.com `
 -Tickets null `
 -TicketStatus null `
 -TicketStatusView null `
 -Details null `
 -Services null `
 -AFFILIATEAMOUNT 100
```

- Convert the resource to JSON
```powershell
$ModelHome | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

