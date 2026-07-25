# ServerOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FormValues** | [**ServerOrderFormValues**](ServerOrderFormValues.md) |  | [optional] 
**ConfigIds** | [**ServerOrderConfigIds**](ServerOrderConfigIds.md) |  | [optional] 
**Cpu** | **Int32** | Number of CPUs for the server order. | [optional] 
**FieldLabel** | [**ServerOrderFieldLabels**](ServerOrderFieldLabels.md) |  | [optional] 
**CpuLi** | [**ServerOrderCpuLi**](ServerOrderCpuLi.md) |  | [optional] 
**MemoryLi** | [**ServerOrderMemoryLi**](ServerOrderMemoryLi.md) |  | [optional] 
**BandwidthLi** | [**ServerOrderBandwidthLi**](ServerOrderBandwidthLi.md) |  | [optional] 
**IpsLi** | [**ServerOrderIpsLi**](ServerOrderIpsLi.md) |  | [optional] 
**OsLi** | [**ServerOrderOsLi**](ServerOrderOsLi.md) |  | [optional] 
**CpLi** | [**ServerOrderCpLi**](ServerOrderCpLi.md) |  | [optional] 
**RaidLi** | [**ServerOrderRAID[]**](ServerOrderRAID.md) | RAID options for the server order. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerOrder = Initialize-InterserverApiServerOrder  -FormValues null `
 -ConfigIds null `
 -Cpu 184 `
 -FieldLabel null `
 -CpuLi null `
 -MemoryLi null `
 -BandwidthLi null `
 -IpsLi null `
 -OsLi null `
 -CpLi null `
 -RaidLi null
```

- Convert the resource to JSON
```powershell
$ServerOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

