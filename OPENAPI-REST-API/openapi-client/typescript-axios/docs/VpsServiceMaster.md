# VpsServiceMaster

Information about the host node (hypervisor) running this VPS, including hardware specs and resource utilization.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps_id** | **string** | VPS ID | [optional] [default to undefined]
**vps_name** | **string** | VPS name | [optional] [default to undefined]
**vps_ip** | **string** | IP address of the VPS | [optional] [default to undefined]
**vps_type** | **string** | VPS type | [optional] [default to undefined]
**vps_hdsize** | **string** | Hard drive size | [optional] [default to undefined]
**vps_hdfree** | **string** | Free hard drive space | [optional] [default to undefined]
**vps_bits** | **string** | Bits | [optional] [default to undefined]
**vps_load** | **string** | CPU load | [optional] [default to undefined]
**vps_ram** | **string** | RAM | [optional] [default to undefined]
**vps_cpu_model** | **string** | CPU model | [optional] [default to undefined]
**vps_cpu_mhz** | **string** | CPU frequency in MHz | [optional] [default to undefined]
**vps_location** | **string** | Location of the VPS | [optional] [default to undefined]
**vps_last_update** | **string** | Last update date | [optional] [default to undefined]
**vps_raid_building** | **string** | RAID building status | [optional] [default to undefined]
**vps_kernel** | **string** | Kernel version | [optional] [default to undefined]
**vps_available** | **string** | Available | [optional] [default to undefined]
**vps_cores** | **string** | Number of CPU cores | [optional] [default to undefined]
**vps_iowait** | **string** | I/O wait | [optional] [default to undefined]
**vps_raid_status** | **string** | RAID status | [optional] [default to undefined]
**vps_mounts** | **string** | Mounts | [optional] [default to undefined]
**vps_server_max** | **string** | Maximum number of servers | [optional] [default to undefined]
**vps_server_max_slices** | **string** | Maximum number of server slices | [optional] [default to undefined]
**vps_drive_type** | **string** | Drive type | [optional] [default to undefined]
**vps_order** | **string** | Order number | [optional] [default to undefined]

## Example

```typescript
import { VpsServiceMaster } from '@interserver/myadmin-client';

const instance: VpsServiceMaster = {
    vps_id,
    vps_name,
    vps_ip,
    vps_type,
    vps_hdsize,
    vps_hdfree,
    vps_bits,
    vps_load,
    vps_ram,
    vps_cpu_model,
    vps_cpu_mhz,
    vps_location,
    vps_last_update,
    vps_raid_building,
    vps_kernel,
    vps_available,
    vps_cores,
    vps_iowait,
    vps_raid_status,
    vps_mounts,
    vps_server_max,
    vps_server_max_slices,
    vps_drive_type,
    vps_order,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
