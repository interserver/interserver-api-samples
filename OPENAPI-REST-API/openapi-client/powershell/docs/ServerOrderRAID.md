# ServerOrderRAID
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | RAID ID. | [optional] 
**Price** | **Int32** | RAID price. | [optional] 
**Img** | **String** | RAID image. | [optional] 
**ShortDesc** | **String** | Short description of the RAID. | [optional] 
**LongDesc** | **String** | Long description of the RAID. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**Active** | **String** | Active status. | [optional] 
**PriceDisplay** | **String** | Display of RAID price. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly RAID price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderRAID = Initialize-InterserverApiServerOrderRAID  -Id 7 `
 -Price 50 `
 -Img raid.png `
 -ShortDesc Hardware Raid 5 `
 -LongDesc Hardware Raid 5 `
 -MonthlyPrice 50 `
 -Active 1 `
 -PriceDisplay $50.00 `
 -MonthlyPriceDisplay $50.00
```

- Convert the resource to JSON
```powershell
$ServerOrderRAID | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

