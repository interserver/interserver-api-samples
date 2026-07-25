# InterServerAPI::Object::CreateGeoFirewallRule

## Load the model package
```perl
use InterServerAPI::Object::CreateGeoFirewallRule;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xdp_action** | **int** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destination_port** | **int** |  | [optional] [default to 80]
**country_code** | **int** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] 
**asn** | **int** | ASN number | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


