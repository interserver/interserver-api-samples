# MailServiceType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** | The ID of the service type. | [optional] 
**ServicesName** | **String** | The name of the service type. | [optional] 
**ServicesCost** | **String** | The cost of the service type. | [optional] 
**ServicesCategory** | **String** | The category of the service type. | [optional] 
**ServicesBuyable** | **String** | Whether the service type is buyable. | [optional] 
**ServicesType** | **String** | The type of the service type. | [optional] 
**ServicesField1** | **String** | Additional field for the service type. | [optional] 
**ServicesField2** | **String** | Additional field for the service type. | [optional] 
**ServicesModule** | **String** | The module of the service type. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailServiceType = Initialize-InterserverApiMailServiceType  -ServicesId 10880 `
 -ServicesName MailBaby Mail `
 -ServicesCost 1.00 `
 -ServicesCategory 800 `
 -ServicesBuyable 1 `
 -ServicesType 800 `
 -ServicesField1  `
 -ServicesField2  `
 -ServicesModule mail
```

- Convert the resource to JSON
```powershell
$MailServiceType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

