# ChargeInvoiceRows
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Whether the invoice retrieval was successful. | [optional] 
**Invoices** | [**System.Collections.Hashtable**](ChargeInvoiceRowsInvoicesValue.md) | List of invoices for the service. | [optional] 

## Examples

- Prepare the resource
```powershell
$ChargeInvoiceRows = Initialize-InterserverApiChargeInvoiceRows  -Success null `
 -Invoices null
```

- Convert the resource to JSON
```powershell
$ChargeInvoiceRows | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

