# TicketsRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** |  | 
**Ticketmaskid** | **String** |  | 
**Lastreplier** | **String** |  | 
**Status** | **String** |  | 
**Priority** | **String** |  | 
**TotalReplies** | **Int32** |  | 
**Lastactivity** | **String** |  | 
**Departmenttitle** | **String** |  | 
**Ticketid** | **Int32** |  | 
**CanClose** | **String** |  | 
**Attachments** | [**AnyType**](.md) |  | 
**StatusText** | **String** |  | 
**Checked** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$TicketsRow = Initialize-InterserverApiTicketsRow  -Title null `
 -Ticketmaskid null `
 -Lastreplier null `
 -Status null `
 -Priority null `
 -TotalReplies null `
 -Lastactivity null `
 -Departmenttitle null `
 -Ticketid null `
 -CanClose null `
 -Attachments null `
 -StatusText null `
 -Checked null
```

- Convert the resource to JSON
```powershell
$TicketsRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

