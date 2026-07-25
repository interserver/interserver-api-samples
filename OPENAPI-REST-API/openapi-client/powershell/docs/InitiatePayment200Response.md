# InitiatePayment200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). | [optional] 
**Redirect** | **String** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). | [optional] 
**Action** | **String** | Form action URL (when type is &#x60;submit&#x60;). | [optional] 
**Method** | **String** | HTTP method for the form submission (when type is &#x60;submit&#x60;). | [optional] 
**Items** | [**SystemCollectionsHashtable**](.md) | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). | [optional] 
**Text** | **String** | Status or result text. | [optional] 

## Examples

- Prepare the resource
```powershell
$InitiatePayment200Response = Initialize-InterserverApiInitiatePayment200Response  -Type null `
 -Redirect null `
 -Action null `
 -Method null `
 -Items null `
 -Text null
```

- Convert the resource to JSON
```powershell
$InitiatePayment200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

