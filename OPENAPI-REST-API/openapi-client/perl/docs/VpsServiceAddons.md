# InterServerAPI::Object::VpsServiceAddons

## Load the model package
```perl
use InterServerAPI::Object::VpsServiceAddons;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | **boolean** | Whether a cPanel license is active on this VPS. | [optional] 
**has_directadmin** | **boolean** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**has_fantastico** | **boolean** | Whether a Fantastico license is active on this VPS. | [optional] 
**has_softaculous** | **boolean** | Whether a Softaculous license is active on this VPS. | [optional] 
**has_hdspace** | **boolean** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicated_ip** | **boolean** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extra_ips** | **ARRAY[string]** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**extra_ips6** | **ARRAY[string]** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**unpaid_ips** | **ARRAY[string]** | List of IP addresses that have unpaid charges. | [optional] 
**ips** | **ARRAY[string]** | All IPv4 addresses assigned to this VPS. | [optional] 
**ips6** | **ARRAY[string]** | All IPv6 addresses assigned to this VPS. | [optional] 
**cpanel_id** | **int** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **int** | Total monthly add-on cost in cents. | [optional] 
**ids** | **ARRAY[string]** | List of add-on service IDs active on this VPS. | [optional] 
**rdata** | **ARRAY[string]** | Raw add-on data entries. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


