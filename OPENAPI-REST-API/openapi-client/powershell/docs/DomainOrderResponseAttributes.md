# DomainOrderResponseAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Registrar order ID. | [optional] 
**AdminEmail** | **String** | Administrative contact email provided for the order. | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainOrderResponseAttributes = Initialize-InterserverApiDomainOrderResponseAttributes  -Id null `
 -AdminEmail null
```

- Convert the resource to JSON
```powershell
$DomainOrderResponseAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

