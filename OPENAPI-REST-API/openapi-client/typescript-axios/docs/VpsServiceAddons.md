# VpsServiceAddons

Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_cpanel** | **boolean** | Whether a cPanel license is active on this VPS. | [optional] [default to undefined]
**has_directadmin** | **boolean** | Whether a DirectAdmin license is active on this VPS. | [optional] [default to undefined]
**has_fantastico** | **boolean** | Whether a Fantastico license is active on this VPS. | [optional] [default to undefined]
**has_softaculous** | **boolean** | Whether a Softaculous license is active on this VPS. | [optional] [default to undefined]
**has_hdspace** | **boolean** | Whether extra disk space has been added to this VPS. | [optional] [default to undefined]
**dedicated_ip** | **boolean** | Whether a dedicated IP address is assigned to this VPS. | [optional] [default to undefined]
**extra_ips** | **Array&lt;string&gt;** | List of additional IPv4 addresses assigned to this VPS. | [optional] [default to undefined]
**extra_ips6** | **Array&lt;string&gt;** | List of additional IPv6 addresses assigned to this VPS. | [optional] [default to undefined]
**unpaid_ips** | **Array&lt;string&gt;** | List of IP addresses that have unpaid charges. | [optional] [default to undefined]
**ips** | **Array&lt;string&gt;** | All IPv4 addresses assigned to this VPS. | [optional] [default to undefined]
**ips6** | **Array&lt;string&gt;** | All IPv6 addresses assigned to this VPS. | [optional] [default to undefined]
**cpanel_id** | **number** | The add-on service ID for the cPanel license. | [optional] [default to undefined]
**cost** | **number** | Total monthly add-on cost in cents. | [optional] [default to undefined]
**ids** | **Array&lt;string&gt;** | List of add-on service IDs active on this VPS. | [optional] [default to undefined]
**rdata** | **Array&lt;string&gt;** | Raw add-on data entries. | [optional] [default to undefined]

## Example

```typescript
import { VpsServiceAddons } from '@interserver/myadmin-client';

const instance: VpsServiceAddons = {
    has_cpanel,
    has_directadmin,
    has_fantastico,
    has_softaculous,
    has_hdspace,
    dedicated_ip,
    extra_ips,
    extra_ips6,
    unpaid_ips,
    ips,
    ips6,
    cpanel_id,
    cost,
    ids,
    rdata,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
