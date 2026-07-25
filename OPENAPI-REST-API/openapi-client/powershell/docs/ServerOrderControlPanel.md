# ServerOrderControlPanel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Control Panel ID. | [optional] 
**Price** | **Int32** | Control Panel price. | [optional] 
**Img** | **String** | Control Panel image. | [optional] 
**ShortDesc** | **String** | Short description of the control panel. | [optional] 
**LongDesc** | **String** | Long description of the control panel. | [optional] 
**OsType** | **String** | OS types compatible with the control panel. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**Types** | **String[]** | List of types. | [optional] 
**PriceDisplay** | **String** | Display of control panel price. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly control panel price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderControlPanel = Initialize-InterserverApiServerOrderControlPanel  -Id 9 `
 -Price 80 `
 -Img cpanel.gif `
 -ShortDesc cPanel ($45+) `
 -LongDesc null `
 -OsType null `
 -MonthlyPrice 0 `
 -Types [&quot;1&quot;,&quot;2&quot;,&quot;4&quot;,&quot;5&quot;,&quot;8&quot;,&quot;17&quot;,&quot;23&quot;,&quot;30&quot;,&quot;51&quot;] `
 -PriceDisplay $80.00 `
 -MonthlyPriceDisplay $0.00
```

- Convert the resource to JSON
```powershell
$ServerOrderControlPanel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

