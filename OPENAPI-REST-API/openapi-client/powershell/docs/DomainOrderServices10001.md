# DomainOrderServices10001
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServicesId** | **String** | Service ID | [optional] 
**ServicesName** | **String** | Service Name | [optional] 
**ServicesCost** | **String** | Service Cost | [optional] 
**ServicesCurrency** | **String** | Currency of Service Cost | [optional] 
**ServicesCategory** | **String** | Service Category | [optional] 
**ServicesBuyable** | **String** | Buyable flag for Service | [optional] 
**ServicesType** | **String** | Service Type | [optional] 
**ServicesField1** | **String** | Field 1 of Service | [optional] 
**ServicesField2** | **String** | Field 2 of Service | [optional] 
**ServicesModule** | **String** | Module of Service | [optional] 
**ServicesHidden** | **String** | Hidden flag for Service | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainOrderServices10001 = Initialize-InterserverApiDomainOrderServices10001  -ServicesId 10001 `
 -ServicesName .asia Domain Name Registration `
 -ServicesCost 19.00 `
 -ServicesCurrency USD `
 -ServicesCategory 100 `
 -ServicesBuyable 1 `
 -ServicesType 100 `
 -ServicesField1 .asia `
 -ServicesField2  `
 -ServicesModule domains `
 -ServicesHidden 0
```

- Convert the resource to JSON
```powershell
$DomainOrderServices10001 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

