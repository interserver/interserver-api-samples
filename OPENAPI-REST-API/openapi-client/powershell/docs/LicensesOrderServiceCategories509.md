# LicensesOrderServiceCategories509
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CategoryId** | **String** | Category ID | [optional] 
**CategoryName** | **String** | Category Name | [optional] 
**CategoryTag** | **String** | Category Tag | [optional] 
**CategoryModule** | **String** | Category Module | [optional] 

## Examples

- Prepare the resource
```powershell
$LicensesOrderServiceCategories509 = Initialize-InterserverApiLicensesOrderServiceCategories509  -CategoryId 509 `
 -CategoryName Webuzo `
 -CategoryTag webuzo `
 -CategoryModule licenses
```

- Convert the resource to JSON
```powershell
$LicensesOrderServiceCategories509 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

