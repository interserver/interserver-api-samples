# ServersBuyNowResponseOrderDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceId** | **Decimal** | The newly created service ID for the ordered server. | [optional] 
**InvoiceId** | **Decimal** | The invoice ID generated for the order. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServersBuyNowResponseOrderDetails = Initialize-InterserverApiServersBuyNowResponseOrderDetails  -ServiceId 1234 `
 -InvoiceId 2342355
```

- Convert the resource to JSON
```powershell
$ServersBuyNowResponseOrderDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

