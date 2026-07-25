# EmailAddressName
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **String** | The email address. | 
**Name** | **String** | Name to use for the sending contact. | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailAddressName = Initialize-InterserverApiEmailAddressName  -Email user@domain.com `
 -Name John Smith
```

- Convert the resource to JSON
```powershell
$EmailAddressName | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

