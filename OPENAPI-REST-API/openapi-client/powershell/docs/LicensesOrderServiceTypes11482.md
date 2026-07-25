# LicensesOrderServiceTypes11482
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** | Service ID | [optional] 
**ServicesName** | **String** | Service Name | [optional] 
**ServicesCost** | **String** | Service Cost | [optional] 
**ServicesCategory** | **String** | Service Category | [optional] 
**ServicesBuyable** | **String** | Buyable flag for Service | [optional] 
**ServicesType** | **String** | Service Type | [optional] 
**ServicesField1** | **String** | Field 1 of Service | [optional] 
**ServicesField2** | **String** | Field 2 of Service | [optional] 
**ServicesModule** | **String** | Module of Service | [optional] 

## Examples

- Prepare the resource
```powershell
$LicensesOrderServiceTypes11482 = Initialize-InterserverApiLicensesOrderServiceTypes11482  -ServicesId 11482 `
 -ServicesName DirectAdmin Standard `
 -ServicesCost 21.75 `
 -ServicesCategory 506 `
 -ServicesBuyable 1 `
 -ServicesType 506 `
 -ServicesField1 2704,Standard `
 -ServicesField2 Unlimited Accounts &amp; Domains&lt;br&gt;&lt;br&gt;The DirectAdmin standard license is best for medium to large shared-hosting and/or reseller-hosting companies. No limit on accounts or domains. `
 -ServicesModule licenses
```

- Convert the resource to JSON
```powershell
$LicensesOrderServiceTypes11482 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

