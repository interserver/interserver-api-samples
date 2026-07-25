# MailOrderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceType** | **Int32** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**Coupon** | **String** | Coupon code. | [optional] [default to ""]
**Comment** | **String** | Free-form note saved on the service row (used on addMail). | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$MailOrderRequest = Initialize-InterserverApiMailOrderRequest  -ServiceType null `
 -Coupon null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$MailOrderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

