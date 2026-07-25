# TicketPostDetailsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PostId** | **Int32** |  | [optional] 
**Date** | **String** |  | [optional] 
**Contents** | **String** |  | [optional] 
**Creator** | **String** |  | [optional] 
**CreatorEmail** | **String** |  | [optional] 
**CreatorName** | **String** |  | [optional] 
**Hasattachments** | **Int32** |  | [optional] 
**AttachmentDownload** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TicketPostDetailsInner = Initialize-InterserverApiTicketPostDetailsInner  -PostId null `
 -Date null `
 -Contents null `
 -Creator null `
 -CreatorEmail null `
 -CreatorName null `
 -Hasattachments null `
 -AttachmentDownload null
```

- Convert the resource to JSON
```powershell
$TicketPostDetailsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

