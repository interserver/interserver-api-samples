# ServerOrderMemory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Memory ID. | [optional] 
**Price** | **String** | Memory price. | [optional] 
**Img** | **String** | Memory image. | [optional] 
**ShortDesc** | **String** | Short description of the memory. | [optional] 
**LongDesc** | **String** | Long description of the memory. | [optional] 
**Manu** | **String** | Manufacturer information. | [optional] 
**Size** | **String** | Memory size. | [optional] 
**Type** | **String** | Memory type. | [optional] 
**Hidden** | **String** | Hidden status. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**DriveType** | **String** | Drive type. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly memory price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderMemory = Initialize-InterserverApiServerOrderMemory  -Id 65 `
 -Price 0 `
 -Img hd.jpg `
 -ShortDesc 20TB SATA `
 -LongDesc null `
 -Manu null `
 -Size 3000 `
 -Type null `
 -Hidden 0 `
 -MonthlyPrice 50 `
 -DriveType lff `
 -MonthlyPriceDisplay $50.00
```

- Convert the resource to JSON
```powershell
$ServerOrderMemory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

