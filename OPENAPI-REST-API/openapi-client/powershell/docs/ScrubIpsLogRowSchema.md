# ScrubIpsLogRowSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **String** |  | [optional] 
**VarFilter** | **String** |  | [optional] 
**BlockedIp** | **String** |  | [optional] 
**TargetIp** | **String** |  | [optional] 
**TargetPort** | **Decimal** |  | [optional] 
**Protocol** | **String** |  | [optional] 
**ByteCount** | **Decimal** |  | [optional] 
**XdpAction** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScrubIpsLogRowSchema = Initialize-InterserverApiScrubIpsLogRowSchema  -Date null `
 -VarFilter null `
 -BlockedIp null `
 -TargetIp null `
 -TargetPort null `
 -Protocol null `
 -ByteCount null `
 -XdpAction null
```

- Convert the resource to JSON
```powershell
$ScrubIpsLogRowSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

