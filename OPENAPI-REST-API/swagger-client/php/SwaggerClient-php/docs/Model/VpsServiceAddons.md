# VpsServiceAddons

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | **bool** | Whether a cPanel license is active on this VPS. | [optional] 
**has_directadmin** | **bool** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**has_fantastico** | **bool** | Whether a Fantastico license is active on this VPS. | [optional] 
**has_softaculous** | **bool** | Whether a Softaculous license is active on this VPS. | [optional] 
**has_hdspace** | **bool** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicated_ip** | **bool** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extra_ips** | **string[]** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**extra_ips6** | **string[]** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**unpaid_ips** | **string[]** | List of IP addresses that have unpaid charges. | [optional] 
**ips** | **string[]** | All IPv4 addresses assigned to this VPS. | [optional] 
**ips6** | **string[]** | All IPv6 addresses assigned to this VPS. | [optional] 
**cpanel_id** | **int** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **int** | Total monthly add-on cost in cents. | [optional] 
**ids** | **string[]** | List of add-on service IDs active on this VPS. | [optional] 
**rdata** | **string[]** | Raw add-on data entries. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

