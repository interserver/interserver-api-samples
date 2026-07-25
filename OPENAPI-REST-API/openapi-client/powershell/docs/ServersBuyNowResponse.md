# ServersBuyNowResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Whether the order was placed successfully. | [optional] 
**Text** | **String** | Human-readable status message. | [optional] 
**OrderDetails** | [**ServersBuyNowResponseOrderDetails**](ServersBuyNowResponseOrderDetails.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServersBuyNowResponse = Initialize-InterserverApiServersBuyNowResponse  -Success true `
 -Text Server order is placed. `
 -OrderDetails null
```

- Convert the resource to JSON
```powershell
$ServersBuyNowResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

