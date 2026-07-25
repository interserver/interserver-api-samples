# MailTutorialsTableRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Desc** | **String** | The description of the tutorials table row. | [optional] 
**Value** | **String** | The value of the tutorials table row. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailTutorialsTableRow = Initialize-InterserverApiMailTutorialsTableRow  -Desc cPanel Tutorial `
 -Value &lt;a class&#x3D;&quot;link&quot; href&#x3D;&quot;https://mail.baby/cpanel/&quot; target&#x3D;&quot;_blank&quot;&gt;Click Here&lt;/a&gt;
```

- Convert the resource to JSON
```powershell
$MailTutorialsTableRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

