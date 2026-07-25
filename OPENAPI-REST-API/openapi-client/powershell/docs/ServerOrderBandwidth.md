# ServerOrderBandwidth
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Bandwidth ID. | [optional] 
**Price** | **Int32** | Bandwidth price. | [optional] 
**Img** | **String** | Bandwidth image. | [optional] 
**ShortDesc** | **String** | Short description of the bandwidth. | [optional] 
**LongDesc** | **String** | Long description of the bandwidth. | [optional] 
**Type** | **String** | Bandwidth type. | [optional] 
**Qty** | **String** | Quantity of bandwidth. | [optional] 
**Active** | **String** | Active status. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**PriceDisplay** | **String** | Display of bandwidth price. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly bandwidth price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderBandwidth = Initialize-InterserverApiServerOrderBandwidth  -Id 15 `
 -Price 0 `
 -Img bandwidth.jpg `
 -ShortDesc 150TB (10Gb Port) `
 -LongDesc  - 2000GB Bandwidth... `
 -Type Standard `
 -Qty 4000 `
 -Active 1 `
 -MonthlyPrice 15 `
 -PriceDisplay $0.00 `
 -MonthlyPriceDisplay $15.00
```

- Convert the resource to JSON
```powershell
$ServerOrderBandwidth | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

