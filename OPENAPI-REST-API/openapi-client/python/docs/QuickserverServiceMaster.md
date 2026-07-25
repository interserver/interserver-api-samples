# QuickserverServiceMaster

Information about the host node running this QuickServer, including hardware specs and resource utilization.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **str** | Quickserver ID | [optional] 
**qs_name** | **str** | Quickserver name | [optional] 
**qs_ip** | **str** | IP address | [optional] 
**qs_type** | **str** | Type | [optional] 
**qs_hdsize** | **str** | HDD size | [optional] 
**qs_hdfree** | **str** | Free HDD space | [optional] 
**qs_bits** | **str** | Bits | [optional] 
**qs_load** | **str** | Load | [optional] 
**qs_ram** | **str** | RAM information | [optional] 
**qs_cpu_model** | **str** | CPU model | [optional] 
**qs_cpu_mhz** | **str** | CPU frequency | [optional] 
**qs_location** | **str** | Location | [optional] 
**qs_available** | **str** | Available information | [optional] 
**qs_cost** | **str** | Cost | [optional] 
**qs_last_update** | **str** | Last update date | [optional] 
**qs_cores** | **str** | Number of cores | [optional] 
**qs_iowait** | **str** | I/O wait | [optional] 
**qs_raid_status** | **str** | RAID status | [optional] 
**qs_drive_type** | **str** | Drive type | [optional] 
**qs_order** | **str** | Order number | [optional] 
**qs_raid_building** | **str** | RAID building information | [optional] 
**qs_kernel** | **str** | Kernel version | [optional] 
**qs_ioping** | **str** | IOPing information | [optional] 
**qs_speed** | **str** | Speed information | [optional] 
**qs_distro** | **str** | Distribution name | [optional] 
**qs_distro_version** | **str** | Distribution version | [optional] 
**qs_bytes_sec_in** | **str** | Bytes/sec in | [optional] 
**qs_bytes_sec_out** | **str** | Bytes/sec out | [optional] 
**qs_packets_sec_in** | **str** | Packets/sec in | [optional] 
**qs_packets_sec_out** | **str** | Packets/sec out | [optional] 
**qs_last_install_time** | **str** | Last install time (null) | [optional] 
**qs_partitions** | **str** | Partitions information (null) | [optional] 
**qs_cpu_flags** | **str** | CPU flags | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_service_master import QuickserverServiceMaster

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverServiceMaster from a JSON string
quickserver_service_master_instance = QuickserverServiceMaster.from_json(json)
# print the JSON string representation of the object
print(QuickserverServiceMaster.to_json())

# convert the object into a dict
quickserver_service_master_dict = quickserver_service_master_instance.to_dict()
# create an instance of QuickserverServiceMaster from a dict
quickserver_service_master_from_dict = QuickserverServiceMaster.from_dict(quickserver_service_master_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


