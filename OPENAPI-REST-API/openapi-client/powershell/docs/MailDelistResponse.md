# MailDelistResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | Mail service ID. | [optional] 
**VarLocal** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Local blocklist entries. | [optional] 
**Mbtrap** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | MailBaby trap block entries. | [optional] 
**Subject** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Subject-based block entries. | [optional] 
**Manual** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Manually blocked entries. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailDelistResponse = Initialize-InterserverApiMailDelistResponse  -Id null `
 -VarLocal null `
 -Mbtrap null `
 -Subject null `
 -Manual null
```

- Convert the resource to JSON
```powershell
$MailDelistResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

