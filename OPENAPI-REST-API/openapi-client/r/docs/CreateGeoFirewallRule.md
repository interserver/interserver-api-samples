# interserverapi::CreateGeoFirewallRule

Create firewall rule for your ip

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xdp_action** | **integer** | 1 &#x3D; Block,  0 &#x3D; Whitelist | [Enum: [0, 1]] 
**destination_port** | **integer** |  | [optional] [default to 80] 
**country_code** | **integer** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] 
**asn** | **integer** | ASN number | [optional] 


