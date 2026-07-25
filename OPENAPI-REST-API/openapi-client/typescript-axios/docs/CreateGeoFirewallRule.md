# CreateGeoFirewallRule

Create firewall rule for your ip

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xdp_action** | **number** | 1 &#x3D; Block,  0 &#x3D; Whitelist | [default to undefined]
**destination_port** | **number** |  | [optional] [default to 80]
**country_code** | **number** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] [default to undefined]
**asn** | **number** | ASN number | [optional] [default to undefined]

## Example

```typescript
import { CreateGeoFirewallRule } from '@interserver/myadmin-client';

const instance: CreateGeoFirewallRule = {
    xdp_action,
    destination_port,
    country_code,
    asn,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
