# AddServer200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** | Status message. | [optional] 
**Invoice** | **Int32** | Invoice ID for payment. | [optional] 
**Order** | **Int32** | Server order ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$AddServer200Response = Initialize-InterserverApiAddServer200Response  -Text Order Completed `
 -Invoice null `
 -Order null
```

- Convert the resource to JSON
```powershell
$AddServer200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

