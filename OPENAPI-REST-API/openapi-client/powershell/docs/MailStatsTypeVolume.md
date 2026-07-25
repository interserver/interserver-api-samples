# MailStatsTypeVolume
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | [**MailStatsTypeVolumeTo**](MailStatsTypeVolumeTo.md) |  | [optional] 
**VarFrom** | [**MailStatsTypeVolumeFrom**](MailStatsTypeVolumeFrom.md) |  | [optional] 
**Ip** | [**MailStatsTypeVolumeIp**](MailStatsTypeVolumeIp.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MailStatsTypeVolume = Initialize-InterserverApiMailStatsTypeVolume  -To null `
 -VarFrom null `
 -Ip null
```

- Convert the resource to JSON
```powershell
$MailStatsTypeVolume | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

