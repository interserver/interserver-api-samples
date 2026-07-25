# BackupOrderPutResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarContinue** | **Boolean** |  | [optional] 
**Errors** | **String[]** |  | [optional] 
**ServiceType** | **Int32** |  | [optional] 
**ServiceCost** | **String** |  | [optional] 
**OriginalCost** | **String** |  | [optional] 
**RepeatServiceCost** | **String** |  | [optional] 
**Hostname** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**Coupon** | **String** |  | [optional] 
**CouponCode** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupOrderPutResponse = Initialize-InterserverApiBackupOrderPutResponse  -VarContinue null `
 -Errors null `
 -ServiceType null `
 -ServiceCost null `
 -OriginalCost null `
 -RepeatServiceCost null `
 -Hostname null `
 -Password null `
 -Coupon null `
 -CouponCode null
```

- Convert the resource to JSON
```powershell
$BackupOrderPutResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

