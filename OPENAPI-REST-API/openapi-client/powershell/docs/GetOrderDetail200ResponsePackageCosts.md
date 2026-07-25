# GetOrderDetail200ResponsePackageCosts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PackageId** | **Decimal** |  | [optional] 
**PackageCost** | **Decimal** |  | [optional] 
**Currency** | **String** |  | [optional] 
**CurrencySymbol** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrderDetail200ResponsePackageCosts = Initialize-InterserverApiGetOrderDetail200ResponsePackageCosts  -PackageId 11552 `
 -PackageCost 5 `
 -Currency USD `
 -CurrencySymbol $
```

- Convert the resource to JSON
```powershell
$GetOrderDetail200ResponsePackageCosts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

