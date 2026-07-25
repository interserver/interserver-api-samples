# interserverapi::VpsServiceAddons

Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | **character** | Whether a cPanel license is active on this VPS. | [optional] 
**has_directadmin** | **character** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**has_fantastico** | **character** | Whether a Fantastico license is active on this VPS. | [optional] 
**has_softaculous** | **character** | Whether a Softaculous license is active on this VPS. | [optional] 
**has_hdspace** | **character** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicated_ip** | **character** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extra_ips** | **array[character]** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**extra_ips6** | **array[character]** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**unpaid_ips** | **array[character]** | List of IP addresses that have unpaid charges. | [optional] 
**ips** | **array[character]** | All IPv4 addresses assigned to this VPS. | [optional] 
**ips6** | **array[character]** | All IPv6 addresses assigned to this VPS. | [optional] 
**cpanel_id** | **integer** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **integer** | Total monthly add-on cost in cents. | [optional] 
**ids** | **array[character]** | List of add-on service IDs active on this VPS. | [optional] 
**rdata** | **array[character]** | Raw add-on data entries. | [optional] 


