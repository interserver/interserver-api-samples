# CreateGeoFirewallRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DestinationPort** | **Int32** |  | [optional] [default to 80]
**CountryCode** | **Int32** | To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode | [optional] 
**Asn** | **Int32** | ASN number | [optional] 
**XdpAction** | **Int32** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 

## Examples

- Prepare the resource
```powershell
$CreateGeoFirewallRule = Initialize-InterserverApiCreateGeoFirewallRule  -DestinationPort 22 `
 -CountryCode 10 `
 -Asn 1331 `
 -XdpAction 1
```

- Convert the resource to JSON
```powershell
$CreateGeoFirewallRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

