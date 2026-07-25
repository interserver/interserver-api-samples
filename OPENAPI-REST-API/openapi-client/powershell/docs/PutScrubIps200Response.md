# PutScrubIps200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarContinue** | **Boolean** |  | [optional] 
**Errors** | **String[]** |  | [optional] 
**ServiceType** | **Int32** |  | [optional] 
**ServiceCost** | **Decimal** |  | [optional] 
**OriginalCost** | **Decimal** |  | [optional] 
**RepeatServiceCost** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PutScrubIps200Response = Initialize-InterserverApiPutScrubIps200Response  -VarContinue null `
 -Errors null `
 -ServiceType null `
 -ServiceCost null `
 -OriginalCost null `
 -RepeatServiceCost null
```

- Convert the resource to JSON
```powershell
$PutScrubIps200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

