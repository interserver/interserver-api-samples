# VpsServiceMaster

Information about the host node (hypervisor) running this VPS, including hardware specs and resource utilization.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps_id** | **str** | VPS ID | [optional] 
**vps_name** | **str** | VPS name | [optional] 
**vps_ip** | **str** | IP address of the VPS | [optional] 
**vps_type** | **str** | VPS type | [optional] 
**vps_hdsize** | **str** | Hard drive size | [optional] 
**vps_hdfree** | **str** | Free hard drive space | [optional] 
**vps_bits** | **str** | Bits | [optional] 
**vps_load** | **str** | CPU load | [optional] 
**vps_ram** | **str** | RAM | [optional] 
**vps_cpu_model** | **str** | CPU model | [optional] 
**vps_cpu_mhz** | **str** | CPU frequency in MHz | [optional] 
**vps_location** | **str** | Location of the VPS | [optional] 
**vps_last_update** | **str** | Last update date | [optional] 
**vps_raid_building** | **str** | RAID building status | [optional] 
**vps_kernel** | **str** | Kernel version | [optional] 
**vps_available** | **str** | Available | [optional] 
**vps_cores** | **str** | Number of CPU cores | [optional] 
**vps_iowait** | **str** | I/O wait | [optional] 
**vps_raid_status** | **str** | RAID status | [optional] 
**vps_mounts** | **str** | Mounts | [optional] 
**vps_server_max** | **str** | Maximum number of servers | [optional] 
**vps_server_max_slices** | **str** | Maximum number of server slices | [optional] 
**vps_drive_type** | **str** | Drive type | [optional] 
**vps_order** | **str** | Order number | [optional] 

## Example

```python
from interserver_api_client.models.vps_service_master import VpsServiceMaster

# TODO update the JSON string below
json = "{}"
# create an instance of VpsServiceMaster from a JSON string
vps_service_master_instance = VpsServiceMaster.from_json(json)
# print the JSON string representation of the object
print(VpsServiceMaster.to_json())

# convert the object into a dict
vps_service_master_dict = vps_service_master_instance.to_dict()
# create an instance of VpsServiceMaster from a dict
vps_service_master_from_dict = VpsServiceMaster.from_dict(vps_service_master_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


