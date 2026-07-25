# ServerOrderCPU
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | CPU ID. | [optional] 
**Price** | **Int32** | CPU price. | [optional] 
**Img** | **String** | CPU image. | [optional] 
**ShortDesc** | **String** | Short description of the CPU. | [optional] 
**LongDesc** | **String** | Long description of the CPU. | [optional] 
**Location** | **String** | Location of the CPU. | [optional] 
**Fsb** | **String** | Front Side Bus information. | [optional] 
**Manu** | **String** | Manufacturer information. | [optional] 
**Type** | **String** | CPU type. | [optional] 
**Speed** | **String** | CPU speed. | [optional] 
**Cache** | **String** | Cache information. | [optional] 
**Active** | **String** | Active status. | [optional] 
**NumCores** | **String** | Number of cores. | [optional] 
**NumCpus** | **String** | Number of CPUs. | [optional] 
**Benchmark** | **String** | CPU benchmark. | [optional] 
**MonthlyPrice** | **Int32** | Monthly price. | [optional] 
**MaxRam** | **String** | Maximum RAM supported. | [optional] 
**MinRam** | **String** | Minimum RAM required. | [optional] 
**MaxLff** | **String** | Maximum LFF (Large Form Factor) supported. | [optional] 
**MaxSff** | **String** | Maximum SFF (Small Form Factor) supported. | [optional] 
**MaxNve** | **String** | Maximum NVMe drives supported. | [optional] 
**Visible** | **String** | Visibility status. | [optional] 
**HdIds** | **String** | Hard drive IDs. | [optional] 
**PriceDisplay** | **String** | Display of CPU price. | [optional] 
**MonthlyPriceDisplay** | **String** | Display of monthly CPU price. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrderCPU = Initialize-InterserverApiServerOrderCPU  -Id 254 `
 -Price 0 `
 -Img ryzen.png `
 -ShortDesc AMD RYZEN 7900X `
 -LongDesc High core and thread count... `
 -Location New York `
 -Fsb null `
 -Manu null `
 -Type AMD `
 -Speed 4.7 `
 -Cache null `
 -Active 1 `
 -NumCores 12 `
 -NumCpus 1 `
 -Benchmark 121148 `
 -MonthlyPrice 75 `
 -MaxRam 128 `
 -MinRam 128 `
 -MaxLff 4 `
 -MaxSff 4 `
 -MaxNve 2 `
 -Visible yes `
 -HdIds null `
 -PriceDisplay $0.00 `
 -MonthlyPriceDisplay $75.00
```

- Convert the resource to JSON
```powershell
$ServerOrderCPU | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

