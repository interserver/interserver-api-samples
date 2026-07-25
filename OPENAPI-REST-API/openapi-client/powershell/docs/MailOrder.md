# MailOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | The ID of the order. | 
**Status** | **String** | The order status. | 
**Username** | **String** | The username to use for this order. | 
**Comment** | **String** | Optional order comment. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailOrder = Initialize-InterserverApiMailOrder  -Id 21472 `
 -Status active `
 -Username mb21472 `
 -Comment null
```

- Convert the resource to JSON
```powershell
$MailOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

