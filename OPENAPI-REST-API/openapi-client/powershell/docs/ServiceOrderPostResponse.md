# ServiceOrderPostResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarContinue** | **Boolean** | Whether the order was accepted and can proceed to payment. | [optional] 
**Errors** | **String[]** | List of validation errors (empty on success). | [optional] 
**TotalCost** | **String** | Total cost of the order. | [optional] 
**Iid** | **String** | Primary invoice ID for payment. | [optional] 
**Iids** | **String[]** | All invoice identifiers associated with the order. | [optional] 
**RealIids** | **String[]** | Numeric invoice IDs for use with billing endpoints. | [optional] 
**ServiceId** | **Int32** | The new service ID created by the order. | [optional] 
**InvoiceDescription** | **String** | Human-readable description of the invoice. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceOrderPostResponse = Initialize-InterserverApiServiceOrderPostResponse  -VarContinue null `
 -Errors null `
 -TotalCost null `
 -Iid null `
 -Iids null `
 -RealIids null `
 -ServiceId null `
 -InvoiceDescription null
```

- Convert the resource to JSON
```powershell
$ServiceOrderPostResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

