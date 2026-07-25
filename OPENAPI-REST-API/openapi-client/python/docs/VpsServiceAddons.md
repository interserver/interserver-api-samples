# VpsServiceAddons

Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | **bool** | Whether a cPanel license is active on this VPS. | [optional] 
**has_directadmin** | **bool** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**has_fantastico** | **bool** | Whether a Fantastico license is active on this VPS. | [optional] 
**has_softaculous** | **bool** | Whether a Softaculous license is active on this VPS. | [optional] 
**has_hdspace** | **bool** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicated_ip** | **bool** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extra_ips** | **List[str]** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**extra_ips6** | **List[str]** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**unpaid_ips** | **List[str]** | List of IP addresses that have unpaid charges. | [optional] 
**ips** | **List[str]** | All IPv4 addresses assigned to this VPS. | [optional] 
**ips6** | **List[str]** | All IPv6 addresses assigned to this VPS. | [optional] 
**cpanel_id** | **int** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **int** | Total monthly add-on cost in cents. | [optional] 
**ids** | **List[str]** | List of add-on service IDs active on this VPS. | [optional] 
**rdata** | **List[str]** | Raw add-on data entries. | [optional] 

## Example

```python
from interserver_api_client.models.vps_service_addons import VpsServiceAddons

# TODO update the JSON string below
json = "{}"
# create an instance of VpsServiceAddons from a JSON string
vps_service_addons_instance = VpsServiceAddons.from_json(json)
# print the JSON string representation of the object
print(VpsServiceAddons.to_json())

# convert the object into a dict
vps_service_addons_dict = vps_service_addons_instance.to_dict()
# create an instance of VpsServiceAddons from a dict
vps_service_addons_from_dict = VpsServiceAddons.from_dict(vps_service_addons_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


