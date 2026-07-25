# VpsServiceAddons


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`has_cpanel`** | **`Bool`** | Whether a cPanel license is active on this VPS. | [optional] [default to nothing]
**`has_directadmin`** | **`Bool`** | Whether a DirectAdmin license is active on this VPS. | [optional] [default to nothing]
**`has_fantastico`** | **`Bool`** | Whether a Fantastico license is active on this VPS. | [optional] [default to nothing]
**`has_softaculous`** | **`Bool`** | Whether a Softaculous license is active on this VPS. | [optional] [default to nothing]
**`has_hdspace`** | **`Bool`** | Whether extra disk space has been added to this VPS. | [optional] [default to nothing]
**`dedicated_ip`** | **`Bool`** | Whether a dedicated IP address is assigned to this VPS. | [optional] [default to nothing]
**`extra_ips`** | **`Vector{String}`** | List of additional IPv4 addresses assigned to this VPS. | [optional] [default to nothing]
**`extra_ips6`** | **`Vector{String}`** | List of additional IPv6 addresses assigned to this VPS. | [optional] [default to nothing]
**`unpaid_ips`** | **`Vector{String}`** | List of IP addresses that have unpaid charges. | [optional] [default to nothing]
**`ips`** | **`Vector{String}`** | All IPv4 addresses assigned to this VPS. | [optional] [default to nothing]
**`ips6`** | **`Vector{String}`** | All IPv6 addresses assigned to this VPS. | [optional] [default to nothing]
**`cpanel_id`** | **`Int64`** | The add-on service ID for the cPanel license. | [optional] [default to nothing]
**`cost`** | **`Int64`** | Total monthly add-on cost in cents. | [optional] [default to nothing]
**`ids`** | **`Vector{String}`** | List of add-on service IDs active on this VPS. | [optional] [default to nothing]
**`rdata`** | **`Vector{String}`** | Raw add-on data entries. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


