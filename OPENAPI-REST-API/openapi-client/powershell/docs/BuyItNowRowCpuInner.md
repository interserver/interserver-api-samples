# BuyItNowRowCpuInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Img** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Speed** | **String** |  | [optional] 
**NumCpus** | **String** |  | [optional] 
**NumCores** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuyItNowRowCpuInner = Initialize-InterserverApiBuyItNowRowCpuInner  -Img xeon-e3.png `
 -Type XEON `
 -Speed  `
 -NumCpus 1 `
 -NumCores 4
```

- Convert the resource to JSON
```powershell
$BuyItNowRowCpuInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

