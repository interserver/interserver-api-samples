# BillingInvoiceList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rows** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Invoice rows returned for the account. | [optional] 
**Summary** | [**SystemCollectionsHashtable**](.md) | Totals and summary data for the invoices list. | [optional] 

## Examples

- Prepare the resource
```powershell
$BillingInvoiceList = Initialize-InterserverApiBillingInvoiceList  -Rows null `
 -Summary null
```

- Convert the resource to JSON
```powershell
$BillingInvoiceList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

