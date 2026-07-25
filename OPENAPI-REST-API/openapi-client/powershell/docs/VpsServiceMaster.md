# VpsServiceMaster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VpsId** | **String** | VPS ID | [optional] 
**VpsName** | **String** | VPS name | [optional] 
**VpsIp** | **String** | IP address of the VPS | [optional] 
**VpsType** | **String** | VPS type | [optional] 
**VpsHdsize** | **String** | Hard drive size | [optional] 
**VpsHdfree** | **String** | Free hard drive space | [optional] 
**VpsBits** | **String** | Bits | [optional] 
**VpsLoad** | **String** | CPU load | [optional] 
**VpsRam** | **String** | RAM | [optional] 
**VpsCpuModel** | **String** | CPU model | [optional] 
**VpsCpuMhz** | **String** | CPU frequency in MHz | [optional] 
**VpsLocation** | **String** | Location of the VPS | [optional] 
**VpsLastUpdate** | **String** | Last update date | [optional] 
**VpsRaidBuilding** | **String** | RAID building status | [optional] 
**VpsKernel** | **String** | Kernel version | [optional] 
**VpsAvailable** | **String** | Available | [optional] 
**VpsCores** | **String** | Number of CPU cores | [optional] 
**VpsIowait** | **String** | I/O wait | [optional] 
**VpsRaidStatus** | **String** | RAID status | [optional] 
**VpsMounts** | **String** | Mounts | [optional] 
**VpsServerMax** | **String** | Maximum number of servers | [optional] 
**VpsServerMaxSlices** | **String** | Maximum number of server slices | [optional] 
**VpsDriveType** | **String** | Drive type | [optional] 
**VpsOrder** | **String** | Order number | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsServiceMaster = Initialize-InterserverApiVpsServiceMaster  -VpsId 2439 `
 -VpsName Mystaging `
 -VpsIp 10.11.12.13 `
 -VpsType 14 `
 -VpsHdsize 1856 `
 -VpsHdfree 1559 `
 -VpsBits 64 `
 -VpsLoad 0.17 `
 -VpsRam 263998228 `
 -VpsCpuModel Intel(R) Xeon(R) CPU E5-2678 v3 @ 2.50GHz `
 -VpsCpuMhz 1198.86 `
 -VpsLocation 1 `
 -VpsLastUpdate 2023-08-17T22:19:04.000Z `
 -VpsRaidBuilding 0 `
 -VpsKernel 5.4.0-121-generic `
 -VpsAvailable 0 `
 -VpsCores 48 `
 -VpsIowait 0.09 `
 -VpsRaidStatus OK: zfs:all pools are healthy `
 -VpsMounts udev:125:0:125:/dev,/dev/md1:91:53:38:/,securityfs:0:0:0:/sys/kernel/security,cgroup2:0:0:0:/sys/fs/cgroup/unified,pstore:0:0:0:/sys/fs/pstore,efivarfs:0:0:0:/sys/firmware/efi/efivars,systemd-1:0:0:0:/proc/sys/fs/binfmt_misc,hugetlbfs:0:0:0:/dev/hugepages `
 -VpsServerMax 50 `
 -VpsServerMaxSlices 80 `
 -VpsDriveType SSD `
 -VpsOrder 36978
```

- Convert the resource to JSON
```powershell
$VpsServiceMaster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

