# ServersBuyNowError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Always false for error responses. | [optional] 
**Text** | **String** | Human-readable error summary. | [optional] 
**Errors** | **String[]** | List of specific validation error messages. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServersBuyNowError = Initialize-InterserverApiServersBuyNowError  -Success false `
 -Text Unable to place order. `
 -Errors [&quot;Server ID is missing.&quot;,&quot;Server Hostname is missing.;&quot;,&quot;Password must contain atleast 8 characters, one lowercase letter, one uppercase letter, one number &amp; one special character&quot;]
```

- Convert the resource to JSON
```powershell
$ServersBuyNowError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

