# PlaceBuyNowServerRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServerId** | **Decimal** | The ID of the buy-it-now server configuration to order. Use the server listing from &#x60;GET /servers/order/buy_now_server&#x60; to find valid IDs. | [optional] 
**ServerHostname** | **String** | The fully-qualified hostname to assign to the server. | [optional] 
**ServerRootPassword** | **String** | The root or administrator password to set on the server. | [optional] 

## Examples

- Prepare the resource
```powershell
$PlaceBuyNowServerRequest = Initialize-InterserverApiPlaceBuyNowServerRequest  -ServerId 2343 `
 -ServerHostname server.int.com `
 -ServerRootPassword uD1c!@cgD
```

- Convert the resource to JSON
```powershell
$PlaceBuyNowServerRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

