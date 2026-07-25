# InterServerClient::CreateGeoFirewallRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xdp_action** | **Integer** | 1 &#x3D; Block,  0 &#x3D; Whitelist |  |
| **destination_port** | **Integer** |  | [optional][default to 80] |
| **country_code** | **Integer** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] |
| **asn** | **Integer** | ASN number | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::CreateGeoFirewallRule.new(
  xdp_action: 1,
  destination_port: 22,
  country_code: 10,
  asn: 1331
)
```

