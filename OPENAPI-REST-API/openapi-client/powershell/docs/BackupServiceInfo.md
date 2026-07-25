# BackupServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** | Backup ID. | [optional] 
**BackupServer** | **String** | Backup server ID. | [optional] 
**BackupUsername** | **String** | Backup username. | [optional] 
**BackupType** | **String** | Backup type. | [optional] 
**BackupCurrency** | **String** | Backup currency. | [optional] 
**BackupOrderDate** | **String** | Backup order date. | [optional] 
**BackupCustid** | **String** | Backup customer ID. | [optional] 
**BackupQuota** | **String** | Backup quota. | [optional] 
**BackupIp** | **String** | Backup IP address. | [optional] 
**BackupStatus** | **String** | Backup status. | [optional] 
**BackupInvoice** | **String** | Backup invoice. | [optional] 
**BackupCoupon** | **String** | Backup coupon. | [optional] 
**BackupExtra** | **String** | Backup extra information. | [optional] 
**BackupServerStatus** | **String** | Backup server status. | [optional] 
**BackupComment** | **String** | Backup comment. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupServiceInfo = Initialize-InterserverApiBackupServiceInfo  -BackupId 21163 `
 -BackupServer 38 `
 -BackupUsername st21163 `
 -BackupType 10831 `
 -BackupCurrency USD `
 -BackupOrderDate 2021-12-29T14:09:57.000Z `
 -BackupCustid 2773 `
 -BackupQuota 0 `
 -BackupIp 64.20.55.234 `
 -BackupStatus canceled `
 -BackupInvoice 19591007 `
 -BackupCoupon 0 `
 -BackupExtra [] `
 -BackupServerStatus deleted `
 -BackupComment null
```

- Convert the resource to JSON
```powershell
$BackupServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

