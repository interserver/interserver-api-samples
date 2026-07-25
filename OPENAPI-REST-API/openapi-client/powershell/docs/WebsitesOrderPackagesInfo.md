# WebsitesOrderPackagesInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** | The ID of the package. | 
**ServicesName** | **String** | The name of the package. | 
**ServicesCost** | **String** | The cost of the package. | 
**ServicesCategory** | **String** | The category of the package. | 
**ServicesBuyable** | **String** | Indicates if the package is buyable (1 for yes, 0 for no). | 
**ServicesType** | **String** | The type of the package. | 
**ServicesField1** | **String** | Additional field 1 for the package. | [optional] 
**ServicesField2** | **String** | Additional field 2 for the package. | [optional] 
**ServicesModule** | **String** | The module of the package. | 
**ServicesHtml** | **String** | HTML content for the package. | [optional] 
**ServicesDescription** | **String** | Description of the package. | 
**ServicesMoreinfoUrl** | **String** | URL for more information about the package. | [optional] 
**ServicesHidden** | **String** | Indicates if the package is hidden (1 for yes, 0 for no). | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsitesOrderPackagesInfo = Initialize-InterserverApiWebsitesOrderPackagesInfo  -ServicesId 11440 `
 -ServicesName DA BOOST X `
 -ServicesCost 69.95 `
 -ServicesCategory 204 `
 -ServicesBuyable 1 `
 -ServicesType 206 `
 -ServicesField1  `
 -ServicesField2 BoostX `
 -ServicesModule webhosting `
 -ServicesHtml  `
 -ServicesDescription Direct Admin Web hosting package with 10x more resources over our standard web hosting package. `
 -ServicesMoreinfoUrl  `
 -ServicesHidden 0
```

- Convert the resource to JSON
```powershell
$WebsitesOrderPackagesInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

