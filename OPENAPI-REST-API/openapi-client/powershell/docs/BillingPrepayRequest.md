# BillingPrepayRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Module** | **String** | Module the prepay should be applied to (for example &#x60;default&#x60;). | [optional] 
**Amount** | **Decimal** | Amount to add to prepay balance. Minimum is $10. | [optional] 
**AutomaticUse** | **String** | Whether the prepay balance should be used automatically. | [optional] 

## Examples

- Prepare the resource
```powershell
$BillingPrepayRequest = Initialize-InterserverApiBillingPrepayRequest  -Module null `
 -Amount null `
 -AutomaticUse 1
```

- Convert the resource to JSON
```powershell
$BillingPrepayRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

