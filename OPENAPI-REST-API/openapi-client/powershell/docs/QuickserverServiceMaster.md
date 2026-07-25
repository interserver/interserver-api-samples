# QuickserverServiceMaster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QsId** | **String** | Quickserver ID | [optional] 
**QsName** | **String** | Quickserver name | [optional] 
**QsIp** | **String** | IP address | [optional] 
**QsType** | **String** | Type | [optional] 
**QsHdsize** | **String** | HDD size | [optional] 
**QsHdfree** | **String** | Free HDD space | [optional] 
**QsBits** | **String** | Bits | [optional] 
**QsLoad** | **String** | Load | [optional] 
**QsRam** | **String** | RAM information | [optional] 
**QsCpuModel** | **String** | CPU model | [optional] 
**QsCpuMhz** | **String** | CPU frequency | [optional] 
**QsLocation** | **String** | Location | [optional] 
**QsAvailable** | **String** | Available information | [optional] 
**QsCost** | **String** | Cost | [optional] 
**QsLastUpdate** | **String** | Last update date | [optional] 
**QsCores** | **String** | Number of cores | [optional] 
**QsIowait** | **String** | I/O wait | [optional] 
**QsRaidStatus** | **String** | RAID status | [optional] 
**QsDriveType** | **String** | Drive type | [optional] 
**QsOrder** | **String** | Order number | [optional] 
**QsRaidBuilding** | **String** | RAID building information | [optional] 
**QsKernel** | **String** | Kernel version | [optional] 
**QsIoping** | **String** | IOPing information | [optional] 
**QsSpeed** | **String** | Speed information | [optional] 
**QsDistro** | **String** | Distribution name | [optional] 
**QsDistroVersion** | **String** | Distribution version | [optional] 
**QsBytesSecIn** | **String** | Bytes/sec in | [optional] 
**QsBytesSecOut** | **String** | Bytes/sec out | [optional] 
**QsPacketsSecIn** | **String** | Packets/sec in | [optional] 
**QsPacketsSecOut** | **String** | Packets/sec out | [optional] 
**QsLastInstallTime** | **String** | Last install time (null) | [optional] 
**QsPartitions** | **String** | Partitions information (null) | [optional] 
**QsCpuFlags** | **String** | CPU flags | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverServiceMaster = Initialize-InterserverApiQuickserverServiceMaster  -QsId 365 `
 -QsName Qs365 `
 -QsIp  `
 -QsType 14 `
 -QsHdsize 1760 `
 -QsHdfree 1192 `
 -QsBits 64 `
 -QsLoad 3.45 `
 -QsRam 29550679 `
 -QsCpuModel Intel(R) Xeon(R) CPU E3-1271 v3 @ 3.60GHz `
 -QsCpuMhz 2900 `
 -QsLocation 1 `
 -QsAvailable 0 `
 -QsCost 49 `
 -QsLastUpdate 2023-08-17T23:52:02.000Z `
 -QsCores 8 `
 -QsIowait 6.89 `
 -QsRaidStatus OK: zfs:all pools are healthy `
 -QsDriveType SSD `
 -QsOrder 92263 `
 -QsRaidBuilding 0 `
 -QsKernel 5.15.0-69-generic `
 -QsIoping 330707348 `
 -QsSpeed 1000 `
 -QsDistro Ubuntu `
 -QsDistroVersion 22.04 `
 -QsBytesSecIn 0 `
 -QsBytesSecOut 0 `
 -QsPacketsSecIn 0 `
 -QsPacketsSecOut 0 `
 -QsLastInstallTime null `
 -QsPartitions null `
 -QsCpuFlags 
```

- Convert the resource to JSON
```powershell
$QuickserverServiceMaster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

