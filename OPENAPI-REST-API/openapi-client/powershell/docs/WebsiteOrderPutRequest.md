# WebsiteOrderPutRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**PackageId** | **Int32** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**Rootpass** | **String** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to ""]
**Period** | **Int32** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**Coupon** | **String** | Coupon code. | [optional] [default to ""]
**ServiceOfferId** | **Int32** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**Script** | **Int32** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**Comment** | **String** | Free-form note saved on the service row. | [optional] [default to ""]
**RegisterDomain** | **Boolean** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$WebsiteOrderPutRequest = Initialize-InterserverApiWebsiteOrderPutRequest  -Hostname null `
 -PackageId null `
 -Rootpass null `
 -Period null `
 -Coupon null `
 -ServiceOfferId null `
 -Script null `
 -Comment null `
 -RegisterDomain null
```

- Convert the resource to JSON
```powershell
$WebsiteOrderPutRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

