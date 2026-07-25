# ServerOrderIP
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | IP ID. | [optional] 
**Price** | **Int32** | IP price. | [optional] 
**Img** | **String** | IP image. | [optional] 
**ShortDesc** | **String** | Short description of the IP. | [optional] 
**LongDesc** | **String** | Long description of the IP. | [optional] 
**Qty** | **String** | Quantity of IPs. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**PriceDisplay** | **String** | Display of IP price. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly IP price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderIP = Initialize-InterserverApiServerOrderIP  -Id 9 `
 -Price 0 `
 -Img ips.jpg `
 -ShortDesc 1 Vlan Ip (/30) `
 -LongDesc 1 IP In personal Vlan `
 -Qty 1 `
 -MonthlyPrice 0 `
 -PriceDisplay $0.00 `
 -MonthlyPriceDisplay $0.00
```

- Convert the resource to JSON
```powershell
$ServerOrderIP | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

