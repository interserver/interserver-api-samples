

# CreateGeoFirewallRule

Create firewall rule for your ip

The class is defined in **[CreateGeoFirewallRule.java](../../src/main/java/org/openapitools/model/CreateGeoFirewallRule.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xdpAction** | [**XdpActionEnum**](#XdpActionEnum) | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destinationPort** | `Integer` |  |  [optional property]
**countryCode** | `Integer` | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode |  [optional property]
**asn** | `Integer` | ASN number |  [optional property]

## XdpActionEnum

Name | Value
---- | -----
NUMBER_0 | `0`
NUMBER_1 | `1`
NUMBER_unknown_default_open_api | `11184809`





