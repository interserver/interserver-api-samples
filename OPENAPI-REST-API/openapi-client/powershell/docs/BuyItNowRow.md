# BuyItNowRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServerId** | **String** | Unique server ID. Use this as &#x60;server_id&#x60; in &#x60;POST /servers/order/buy_now_server&#x60;. | [optional] 
**Cpu** | [**BuyItNowRowCpuInner[]**](BuyItNowRowCpuInner.md) |  | [optional] 
**Memory** | **String** |  | [optional] 
**Disk** | **System.Collections.Hashtable** |  | [optional] 
**Bandwidth** | **String** |  | [optional] 
**Ips** | **String** |  | [optional] 
**Location** | **String** |  | [optional] 
**Price** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuyItNowRow = Initialize-InterserverApiBuyItNowRow  -ServerId 11432 `
 -Cpu null `
 -Memory 64GB `
 -Disk null `
 -Bandwidth 1Gbps Unmetered `
 -Ips 1 Vlan Ip (/30) `
 -Location NYC Region `
 -Price 64
```

- Convert the resource to JSON
```powershell
$BuyItNowRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

