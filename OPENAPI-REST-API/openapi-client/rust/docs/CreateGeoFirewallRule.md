# CreateGeoFirewallRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port** | Option<**i32**> |  | [optional][default to 80]
**country_code** | Option<**i32**> | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode | [optional]
**asn** | Option<**i32**> | ASN number | [optional]
**xdp_action** | **XdpAction** | 1 = Block,  0 = Whitelist (enum: 0, 1) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


