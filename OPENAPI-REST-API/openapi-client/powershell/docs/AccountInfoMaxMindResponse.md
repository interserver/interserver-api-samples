# AccountInfoMaxMindResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Distance** | **String** |  | [optional] 
**CountryMatch** | **String** |  | [optional] 
**CountryCode** | **String** |  | [optional] 
**FreeMail** | **String** |  | [optional] 
**AnonymousProxy** | **String** |  | [optional] 
**Score** | **String** |  | [optional] 
**BinMatch** | **String** |  | [optional] 
**BinCountry** | **String** |  | [optional] 
**Err** | **String** |  | [optional] 
**ProxyScore** | **String** |  | [optional] 
**IpRegion** | **String** |  | [optional] 
**IpCity** | **String** |  | [optional] 
**IpLatitude** | **String** |  | [optional] 
**IpLongitude** | **String** |  | [optional] 
**BinName** | **String** |  | [optional] 
**IpIsp** | **String** |  | [optional] 
**IpOrg** | **String** |  | [optional] 
**BinNameMatch** | **String** |  | [optional] 
**BinPhoneMatch** | **String** |  | [optional] 
**BinPhone** | **String** |  | [optional] 
**CustPhoneInBillingLoc** | **String** |  | [optional] 
**HighRiskCountry** | **String** |  | [optional] 
**QueriesRemaining** | **String** |  | [optional] 
**CityPostalMatch** | **String** |  | [optional] 
**ShipCityPostalMatch** | **String** |  | [optional] 
**MaxmindID** | **String** |  | [optional] 
**IpAsnum** | **String** |  | [optional] 
**IpUserType** | **String** |  | [optional] 
**IpCountryConf** | **String** |  | [optional] 
**IpRegionConf** | **String** |  | [optional] 
**IpCityConf** | **String** |  | [optional] 
**IpPostalCode** | **String** |  | [optional] 
**IpPostalConf** | **String** |  | [optional] 
**IpAccuracyRadius** | **String** |  | [optional] 
**IpNetSpeedCell** | **String** |  | [optional] 
**IpMetroCode** | **String** |  | [optional] 
**IpAreaCode** | **String** |  | [optional] 
**IpTimeZone** | **String** |  | [optional] 
**IpRegionName** | **String** |  | [optional] 
**IpDomain** | **String** |  | [optional] 
**IpCountryName** | **String** |  | [optional] 
**IpContinentCode** | **String** |  | [optional] 
**IpCorporateProxy** | **String** |  | [optional] 
**CarderEmail** | **String** |  | [optional] 
**HighRiskUsername** | **String** |  | [optional] 
**HighRiskPassword** | **String** |  | [optional] 
**RiskScore** | [**AccountInfoMaxMindResponseRiskScore**](AccountInfoMaxMindResponseRiskScore.md) |  | [optional] 
**IsTransProxy** | **String** |  | [optional] 
**Prepaid** | **String** |  | [optional] 
**MinfraudVersion** | **String** |  | [optional] 
**ServiceLevel** | **String** |  | [optional] 
**Explanation** | **String** |  | [optional] 
**FemaleName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoMaxMindResponse = Initialize-InterserverApiAccountInfoMaxMindResponse  -Distance null `
 -CountryMatch null `
 -CountryCode null `
 -FreeMail null `
 -AnonymousProxy null `
 -Score null `
 -BinMatch null `
 -BinCountry null `
 -Err null `
 -ProxyScore null `
 -IpRegion null `
 -IpCity null `
 -IpLatitude null `
 -IpLongitude null `
 -BinName null `
 -IpIsp null `
 -IpOrg null `
 -BinNameMatch null `
 -BinPhoneMatch null `
 -BinPhone null `
 -CustPhoneInBillingLoc null `
 -HighRiskCountry null `
 -QueriesRemaining null `
 -CityPostalMatch null `
 -ShipCityPostalMatch null `
 -MaxmindID null `
 -IpAsnum null `
 -IpUserType null `
 -IpCountryConf null `
 -IpRegionConf null `
 -IpCityConf null `
 -IpPostalCode null `
 -IpPostalConf null `
 -IpAccuracyRadius null `
 -IpNetSpeedCell null `
 -IpMetroCode null `
 -IpAreaCode null `
 -IpTimeZone null `
 -IpRegionName null `
 -IpDomain null `
 -IpCountryName null `
 -IpContinentCode null `
 -IpCorporateProxy null `
 -CarderEmail null `
 -HighRiskUsername null `
 -HighRiskPassword null `
 -RiskScore null `
 -IsTransProxy null `
 -Prepaid null `
 -MinfraudVersion null `
 -ServiceLevel null `
 -Explanation null `
 -FemaleName null
```

- Convert the resource to JSON
```powershell
$AccountInfoMaxMindResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

