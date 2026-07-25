# MailStatsType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | **String** |  | [optional] [default to "1h"]
**Usage** | **Int32** |  | [optional] 
**Currency** | **String** |  | [optional] 
**CurrencySymbol** | **String** |  | [optional] 
**Cost** | **Double** |  | [optional] 
**Received** | **Int32** |  | [optional] 
**Sent** | **Int32** |  | [optional] 
**Volume** | [**MailStatsTypeVolume**](MailStatsTypeVolume.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MailStatsType = Initialize-InterserverApiMailStatsType  -Time null `
 -Usage null `
 -Currency null `
 -CurrencySymbol null `
 -Cost null `
 -Received null `
 -Sent null `
 -Volume null
```

- Convert the resource to JSON
```powershell
$MailStatsType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

