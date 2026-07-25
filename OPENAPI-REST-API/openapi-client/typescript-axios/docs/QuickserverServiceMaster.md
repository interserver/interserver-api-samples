# QuickserverServiceMaster

Information about the host node running this QuickServer, including hardware specs and resource utilization.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **string** | Quickserver ID | [optional] [default to undefined]
**qs_name** | **string** | Quickserver name | [optional] [default to undefined]
**qs_ip** | **string** | IP address | [optional] [default to undefined]
**qs_type** | **string** | Type | [optional] [default to undefined]
**qs_hdsize** | **string** | HDD size | [optional] [default to undefined]
**qs_hdfree** | **string** | Free HDD space | [optional] [default to undefined]
**qs_bits** | **string** | Bits | [optional] [default to undefined]
**qs_load** | **string** | Load | [optional] [default to undefined]
**qs_ram** | **string** | RAM information | [optional] [default to undefined]
**qs_cpu_model** | **string** | CPU model | [optional] [default to undefined]
**qs_cpu_mhz** | **string** | CPU frequency | [optional] [default to undefined]
**qs_location** | **string** | Location | [optional] [default to undefined]
**qs_available** | **string** | Available information | [optional] [default to undefined]
**qs_cost** | **string** | Cost | [optional] [default to undefined]
**qs_last_update** | **string** | Last update date | [optional] [default to undefined]
**qs_cores** | **string** | Number of cores | [optional] [default to undefined]
**qs_iowait** | **string** | I/O wait | [optional] [default to undefined]
**qs_raid_status** | **string** | RAID status | [optional] [default to undefined]
**qs_drive_type** | **string** | Drive type | [optional] [default to undefined]
**qs_order** | **string** | Order number | [optional] [default to undefined]
**qs_raid_building** | **string** | RAID building information | [optional] [default to undefined]
**qs_kernel** | **string** | Kernel version | [optional] [default to undefined]
**qs_ioping** | **string** | IOPing information | [optional] [default to undefined]
**qs_speed** | **string** | Speed information | [optional] [default to undefined]
**qs_distro** | **string** | Distribution name | [optional] [default to undefined]
**qs_distro_version** | **string** | Distribution version | [optional] [default to undefined]
**qs_bytes_sec_in** | **string** | Bytes/sec in | [optional] [default to undefined]
**qs_bytes_sec_out** | **string** | Bytes/sec out | [optional] [default to undefined]
**qs_packets_sec_in** | **string** | Packets/sec in | [optional] [default to undefined]
**qs_packets_sec_out** | **string** | Packets/sec out | [optional] [default to undefined]
**qs_last_install_time** | **string** | Last install time (null) | [optional] [default to undefined]
**qs_partitions** | **string** | Partitions information (null) | [optional] [default to undefined]
**qs_cpu_flags** | **string** | CPU flags | [optional] [default to undefined]

## Example

```typescript
import { QuickserverServiceMaster } from '@interserver/myadmin-client';

const instance: QuickserverServiceMaster = {
    qs_id,
    qs_name,
    qs_ip,
    qs_type,
    qs_hdsize,
    qs_hdfree,
    qs_bits,
    qs_load,
    qs_ram,
    qs_cpu_model,
    qs_cpu_mhz,
    qs_location,
    qs_available,
    qs_cost,
    qs_last_update,
    qs_cores,
    qs_iowait,
    qs_raid_status,
    qs_drive_type,
    qs_order,
    qs_raid_building,
    qs_kernel,
    qs_ioping,
    qs_speed,
    qs_distro,
    qs_distro_version,
    qs_bytes_sec_in,
    qs_bytes_sec_out,
    qs_packets_sec_in,
    qs_packets_sec_out,
    qs_last_install_time,
    qs_partitions,
    qs_cpu_flags,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
