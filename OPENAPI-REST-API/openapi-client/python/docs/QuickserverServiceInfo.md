# QuickserverServiceInfo

Core service record for a QuickServer including ID, status, IP, OS, and billing details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **str** | Quickserver ID | [optional] 
**qs_custid** | **str** | Customer ID | [optional] 
**qs_server** | **str** | Server information | [optional] 
**qs_ip** | **str** | IP address | [optional] 
**qs_ipv6** | **str** | IPv6 address (null) | [optional] 
**qs_vzid** | **str** | VZ ID | [optional] 
**qs_currency** | **str** | Currency | [optional] 
**qs_type** | **str** | Type | [optional] 
**qs_order_date** | **str** | Order date | [optional] 
**qs_status** | **str** | Status | [optional] 
**qs_invoice** | **str** | Invoice number | [optional] 
**qs_coupon** | **str** | Coupon information | [optional] 
**qs_extra** | **str** | Extra information | [optional] 
**qs_hostname** | **str** | Hostname | [optional] 
**qs_server_status** | **str** | Server status | [optional] 
**qs_comment** | **str** | Comment | [optional] 
**qs_slices** | **str** | Slices information | [optional] 
**qs_vnc** | **str** | VNC information | [optional] 
**qs_vnc_port** | **int** | VNC port (null) | [optional] 
**qs_rootpass** | **str** | Root password | [optional] 
**qs_mac** | **str** | MAC address | [optional] 
**qs_os** | **str** | Operating system | [optional] 
**qs_version** | **str** | OS version | [optional] 
**qs_location** | **str** | Location | [optional] 
**qs_platform** | **str** | Platform (null) | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_service_info import QuickserverServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverServiceInfo from a JSON string
quickserver_service_info_instance = QuickserverServiceInfo.from_json(json)
# print the JSON string representation of the object
print(QuickserverServiceInfo.to_json())

# convert the object into a dict
quickserver_service_info_dict = quickserver_service_info_instance.to_dict()
# create an instance of QuickserverServiceInfo from a dict
quickserver_service_info_from_dict = QuickserverServiceInfo.from_dict(quickserver_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


