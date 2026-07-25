# DomainOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**Type** | **String** | Order type. | [optional] [default to "register"]
**Coupon** | **String** | Coupon code (addDomain only). | [optional] [default to ""]
**WhoisPrivacy** | **String** | Set to &quot;&quot;enable&quot;&quot; to add Whois privacy (addDomain only). | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainOrderRequest = Initialize-InterserverApiDomainOrderRequest  -Hostname null `
 -Type null `
 -Coupon null `
 -WhoisPrivacy null
```

- Convert the resource to JSON
```powershell
$DomainOrderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

