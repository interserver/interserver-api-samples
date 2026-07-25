# VpsServiceInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps_id** | **str** | VPS ID | [optional] 
**vps_custid** | **str** | Customer ID | [optional] 
**vps_server** | **str** | Server ID | [optional] 
**vps_ip** | **str** | IP address of the VPS | [optional] 
**vps_ipv6** | **str** | IPv6 address of the VPS | [optional] 
**vps_vzid** | **str** | VPS Virtuozzo ID | [optional] 
**vps_currency** | **str** | Currency used for billing | [optional] 
**vps_type** | **str** | VPS type | [optional] 
**vps_order_date** | **str** | Date of VPS order | [optional] 
**vps_status** | **str** | VPS status | [optional] 
**vps_invoice** | **str** | VPS invoice number | [optional] 
**vps_coupon** | **str** | VPS coupon code | [optional] 
**vps_extra** | **str** | Additional information about the VPS | [optional] 
**vps_hostname** | **str** | VPS hostname | [optional] 
**vps_server_status** | **str** | Status of the VPS server | [optional] 
**vps_comment** | **str** | Comment associated with the VPS | [optional] 
**vps_slices** | **str** | Number of VPS slices | [optional] 
**vps_vnc** | **str** | VNC address | [optional] 
**vps_vnc_port** | **str** | VNC port | [optional] 
**vps_rootpass** | **str** | Root password of the VPS | [optional] 
**vps_mac** | **str** | MAC address of the VPS | [optional] 
**vps_os** | **str** | Operating system of the VPS | [optional] 
**vps_version** | **str** | Version of the operating system | [optional] 
**vps_location** | **str** | Location of the VPS | [optional] 
**vps_platform** | **str** | Virtualization platform | [optional] 
**vps_diskused** | **str** | Amount of disk space used | [optional] 
**vps_diskmax** | **str** | Maximum disk space available | [optional] 

## Example

```python
from interserver_api_client.models.vps_service_info import VpsServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of VpsServiceInfo from a JSON string
vps_service_info_instance = VpsServiceInfo.from_json(json)
# print the JSON string representation of the object
print(VpsServiceInfo.to_json())

# convert the object into a dict
vps_service_info_dict = vps_service_info_instance.to_dict()
# create an instance of VpsServiceInfo from a dict
vps_service_info_from_dict = VpsServiceInfo.from_dict(vps_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


