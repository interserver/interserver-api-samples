# ServerOrderOS
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Operating System ID. | [optional] 
**Price** | **Int32** | Operating System price. | [optional] 
**Img** | **String** | Operating System image. | [optional] 
**ShortDesc** | **String** | Short description of the OS. | [optional] 
**LongDesc** | **String** | Long description of the OS. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**Active** | **String** | Active status. | [optional] 
**PriceDisplay** | **String** | Display of OS price. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly OS price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderOS = Initialize-InterserverApiServerOrderOS  -Id 51 `
 -Price 0 `
 -Img null `
 -ShortDesc AlmaLinux `
 -LongDesc null `
 -MonthlyPrice 0 `
 -Active 1 `
 -PriceDisplay $0.00 `
 -MonthlyPriceDisplay $0.00
```

- Convert the resource to JSON
```powershell
$ServerOrderOS | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

