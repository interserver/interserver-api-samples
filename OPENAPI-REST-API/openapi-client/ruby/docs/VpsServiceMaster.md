# InterServerClient::VpsServiceMaster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vps_id** | **String** | VPS ID | [optional] |
| **vps_name** | **String** | VPS name | [optional] |
| **vps_ip** | **String** | IP address of the VPS | [optional] |
| **vps_type** | **String** | VPS type | [optional] |
| **vps_hdsize** | **String** | Hard drive size | [optional] |
| **vps_hdfree** | **String** | Free hard drive space | [optional] |
| **vps_bits** | **String** | Bits | [optional] |
| **vps_load** | **String** | CPU load | [optional] |
| **vps_ram** | **String** | RAM | [optional] |
| **vps_cpu_model** | **String** | CPU model | [optional] |
| **vps_cpu_mhz** | **String** | CPU frequency in MHz | [optional] |
| **vps_location** | **String** | Location of the VPS | [optional] |
| **vps_last_update** | **String** | Last update date | [optional] |
| **vps_raid_building** | **String** | RAID building status | [optional] |
| **vps_kernel** | **String** | Kernel version | [optional] |
| **vps_available** | **String** | Available | [optional] |
| **vps_cores** | **String** | Number of CPU cores | [optional] |
| **vps_iowait** | **String** | I/O wait | [optional] |
| **vps_raid_status** | **String** | RAID status | [optional] |
| **vps_mounts** | **String** | Mounts | [optional] |
| **vps_server_max** | **String** | Maximum number of servers | [optional] |
| **vps_server_max_slices** | **String** | Maximum number of server slices | [optional] |
| **vps_drive_type** | **String** | Drive type | [optional] |
| **vps_order** | **String** | Order number | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::VpsServiceMaster.new(
  vps_id: 2439,
  vps_name: Mystaging,
  vps_ip: 10.11.12.13,
  vps_type: 14,
  vps_hdsize: 1856,
  vps_hdfree: 1559,
  vps_bits: 64,
  vps_load: 0.17,
  vps_ram: 263998228,
  vps_cpu_model: Intel(R) Xeon(R) CPU E5-2678 v3 @ 2.50GHz,
  vps_cpu_mhz: 1198.86,
  vps_location: 1,
  vps_last_update: 2023-08-17T22:19:04.000Z,
  vps_raid_building: 0,
  vps_kernel: 5.4.0-121-generic,
  vps_available: 0,
  vps_cores: 48,
  vps_iowait: 0.09,
  vps_raid_status: OK: zfs:all pools are healthy,
  vps_mounts: udev:125:0:125:/dev,/dev/md1:91:53:38:/,securityfs:0:0:0:/sys/kernel/security,cgroup2:0:0:0:/sys/fs/cgroup/unified,pstore:0:0:0:/sys/fs/pstore,efivarfs:0:0:0:/sys/firmware/efi/efivars,systemd-1:0:0:0:/proc/sys/fs/binfmt_misc,hugetlbfs:0:0:0:/dev/hugepages,
  vps_server_max: 50,
  vps_server_max_slices: 80,
  vps_drive_type: SSD,
  vps_order: 36978
)
```

