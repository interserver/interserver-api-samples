# ModuleSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SERVICEIDOFFSET** | **Int32** |  | 
**USEREPEATINVOICE** | **Boolean** |  | 
**USEPACKAGES** | **Boolean** |  | 
**BILLINGDAYSOFFSET** | **Int32** |  | 
**IMGNAME** | **String** |  | 
**REPEATBILLINGMETHOD** | **Int32** |  | 
**DELETEPENDINGDAYS** | **Int32** |  | 
**SUSPENDDAYS** | **Int32** |  | 
**SUSPENDWARNINGDAYS** | **Int32** |  | 
**TITLE** | **String** |  | 
**MENUNAME** | **String** |  | 
**EMAILFROM** | **String** |  | 
**TBLNAME** | **String** |  | 
**TABLE** | **String** |  | 
**TITLEFIELD** | **String** |  | 
**PREFIX** | **String** |  | 
**TITLEFIELD2** | **String** |  | [optional] 
**TITLEFIELD3** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModuleSettings = Initialize-InterserverApiModuleSettings  -SERVICEIDOFFSET 0 `
 -USEREPEATINVOICE true `
 -USEPACKAGES true `
 -BILLINGDAYSOFFSET 0 `
 -IMGNAME root-server.png `
 -REPEATBILLINGMETHOD 2 `
 -DELETEPENDINGDAYS 45 `
 -SUSPENDDAYS 14 `
 -SUSPENDWARNINGDAYS 7 `
 -TITLE VPS `
 -MENUNAME VPS `
 -EMAILFROM support@interserver.net&quot; `
 -TBLNAME VPS `
 -TABLE vps `
 -TITLEFIELD vps_hostname `
 -PREFIX vps `
 -TITLEFIELD2 vps_ip `
 -TITLEFIELD3 vps_vzid
```

- Convert the resource to JSON
```powershell
$ModuleSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

