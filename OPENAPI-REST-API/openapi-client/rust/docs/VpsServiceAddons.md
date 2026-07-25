# VpsServiceAddons

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | Option<**bool**> | Whether a cPanel license is active on this VPS. | [optional]
**has_directadmin** | Option<**bool**> | Whether a DirectAdmin license is active on this VPS. | [optional]
**has_fantastico** | Option<**bool**> | Whether a Fantastico license is active on this VPS. | [optional]
**has_softaculous** | Option<**bool**> | Whether a Softaculous license is active on this VPS. | [optional]
**has_hdspace** | Option<**bool**> | Whether extra disk space has been added to this VPS. | [optional]
**dedicated_ip** | Option<**bool**> | Whether a dedicated IP address is assigned to this VPS. | [optional]
**extra_ips** | Option<**Vec<String>**> | List of additional IPv4 addresses assigned to this VPS. | [optional]
**extra_ips6** | Option<**Vec<String>**> | List of additional IPv6 addresses assigned to this VPS. | [optional]
**unpaid_ips** | Option<**Vec<String>**> | List of IP addresses that have unpaid charges. | [optional]
**ips** | Option<**Vec<String>**> | All IPv4 addresses assigned to this VPS. | [optional]
**ips6** | Option<**Vec<String>**> | All IPv6 addresses assigned to this VPS. | [optional]
**cpanel_id** | Option<**i32**> | The add-on service ID for the cPanel license. | [optional]
**cost** | Option<**i32**> | Total monthly add-on cost in cents. | [optional]
**ids** | Option<**Vec<String>**> | List of add-on service IDs active on this VPS. | [optional]
**rdata** | Option<**Vec<String>**> | Raw add-on data entries. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


