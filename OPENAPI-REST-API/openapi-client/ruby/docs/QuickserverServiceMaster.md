# InterServerClient::QuickserverServiceMaster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qs_id** | **String** | Quickserver ID | [optional] |
| **qs_name** | **String** | Quickserver name | [optional] |
| **qs_ip** | **String** | IP address | [optional] |
| **qs_type** | **String** | Type | [optional] |
| **qs_hdsize** | **String** | HDD size | [optional] |
| **qs_hdfree** | **String** | Free HDD space | [optional] |
| **qs_bits** | **String** | Bits | [optional] |
| **qs_load** | **String** | Load | [optional] |
| **qs_ram** | **String** | RAM information | [optional] |
| **qs_cpu_model** | **String** | CPU model | [optional] |
| **qs_cpu_mhz** | **String** | CPU frequency | [optional] |
| **qs_location** | **String** | Location | [optional] |
| **qs_available** | **String** | Available information | [optional] |
| **qs_cost** | **String** | Cost | [optional] |
| **qs_last_update** | **String** | Last update date | [optional] |
| **qs_cores** | **String** | Number of cores | [optional] |
| **qs_iowait** | **String** | I/O wait | [optional] |
| **qs_raid_status** | **String** | RAID status | [optional] |
| **qs_drive_type** | **String** | Drive type | [optional] |
| **qs_order** | **String** | Order number | [optional] |
| **qs_raid_building** | **String** | RAID building information | [optional] |
| **qs_kernel** | **String** | Kernel version | [optional] |
| **qs_ioping** | **String** | IOPing information | [optional] |
| **qs_speed** | **String** | Speed information | [optional] |
| **qs_distro** | **String** | Distribution name | [optional] |
| **qs_distro_version** | **String** | Distribution version | [optional] |
| **qs_bytes_sec_in** | **String** | Bytes/sec in | [optional] |
| **qs_bytes_sec_out** | **String** | Bytes/sec out | [optional] |
| **qs_packets_sec_in** | **String** | Packets/sec in | [optional] |
| **qs_packets_sec_out** | **String** | Packets/sec out | [optional] |
| **qs_last_install_time** | **String** | Last install time (null) | [optional] |
| **qs_partitions** | **String** | Partitions information (null) | [optional] |
| **qs_cpu_flags** | **String** | CPU flags | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverServiceMaster.new(
  qs_id: 365,
  qs_name: Qs365,
  qs_ip: ,
  qs_type: 14,
  qs_hdsize: 1760,
  qs_hdfree: 1192,
  qs_bits: 64,
  qs_load: 3.45,
  qs_ram: 29550679,
  qs_cpu_model: Intel(R) Xeon(R) CPU E3-1271 v3 @ 3.60GHz,
  qs_cpu_mhz: 2900,
  qs_location: 1,
  qs_available: 0,
  qs_cost: 49,
  qs_last_update: 2023-08-17T23:52:02.000Z,
  qs_cores: 8,
  qs_iowait: 6.89,
  qs_raid_status: OK: zfs:all pools are healthy,
  qs_drive_type: SSD,
  qs_order: 92263,
  qs_raid_building: 0,
  qs_kernel: 5.15.0-69-generic,
  qs_ioping: 330707348,
  qs_speed: 1000,
  qs_distro: Ubuntu,
  qs_distro_version: 22.04,
  qs_bytes_sec_in: 0,
  qs_bytes_sec_out: 0,
  qs_packets_sec_in: 0,
  qs_packets_sec_out: 0,
  qs_last_install_time: null,
  qs_partitions: null,
  qs_cpu_flags: 
)
```

