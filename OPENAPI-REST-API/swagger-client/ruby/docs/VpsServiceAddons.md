# InterserverApiClient::VpsServiceAddons

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | **BOOLEAN** | Whether a cPanel license is active on this VPS. | [optional] 
**has_directadmin** | **BOOLEAN** | Whether a DirectAdmin license is active on this VPS. | [optional] 
**has_fantastico** | **BOOLEAN** | Whether a Fantastico license is active on this VPS. | [optional] 
**has_softaculous** | **BOOLEAN** | Whether a Softaculous license is active on this VPS. | [optional] 
**has_hdspace** | **BOOLEAN** | Whether extra disk space has been added to this VPS. | [optional] 
**dedicated_ip** | **BOOLEAN** | Whether a dedicated IP address is assigned to this VPS. | [optional] 
**extra_ips** | **Array&lt;String&gt;** | List of additional IPv4 addresses assigned to this VPS. | [optional] 
**extra_ips6** | **Array&lt;String&gt;** | List of additional IPv6 addresses assigned to this VPS. | [optional] 
**unpaid_ips** | **Array&lt;String&gt;** | List of IP addresses that have unpaid charges. | [optional] 
**ips** | **Array&lt;String&gt;** | All IPv4 addresses assigned to this VPS. | [optional] 
**ips6** | **Array&lt;String&gt;** | All IPv6 addresses assigned to this VPS. | [optional] 
**cpanel_id** | **Integer** | The add-on service ID for the cPanel license. | [optional] 
**cost** | **Integer** | Total monthly add-on cost in cents. | [optional] 
**ids** | **Array&lt;String&gt;** | List of add-on service IDs active on this VPS. | [optional] 
**rdata** | **Array&lt;String&gt;** | Raw add-on data entries. | [optional] 

