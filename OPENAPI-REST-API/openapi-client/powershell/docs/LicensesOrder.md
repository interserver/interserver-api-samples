# LicensesOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceCategories** | [**LicensesOrderServiceCategories**](LicensesOrderServiceCategories.md) |  | [optional] 
**PackageCosts** | [**LicensesOrderPackageCosts**](LicensesOrderPackageCosts.md) |  | [optional] 
**ServiceTypes** | [**LicensesOrderServiceTypes**](LicensesOrderServiceTypes.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LicensesOrder = Initialize-InterserverApiLicensesOrder  -ServiceCategories null `
 -PackageCosts null `
 -ServiceTypes null
```

- Convert the resource to JSON
```powershell
$LicensesOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

