# VpsOrderPutResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarContinue** | **Boolean** |  | [optional] 
**Errors** | [**AnyType[]**](AnyType.md) |  | [optional] 
**CouponCode** | **Int32** |  | [optional] 
**ServiceCost** | **Int32** |  | [optional] 
**SliceCost** | **Int32** |  | [optional] 
**ServiceType** | **Int32** |  | [optional] 
**RepeatSliceCost** | **Int32** |  | [optional] 
**OriginalSliceCost** | **Int32** |  | [optional] 
**OriginalCost** | **Int32** |  | [optional] 
**RepeatServiceCost** | **Int32** |  | [optional] 
**MonthlyServiceCost** | **Int32** |  | [optional] 
**Custid** | **String** |  | [optional] 
**Os** | **String** |  | [optional] 
**Slices** | **String** |  | [optional] 
**Platform** | **String** |  | [optional] 
**Controlpanel** | **String** |  | [optional] 
**Period** | **Int32** |  | [optional] 
**Location** | **Int32** |  | [optional] 
**Version** | **String** |  | [optional] 
**Hostname** | **String** |  | [optional] 
**Coupon** | **String** |  | [optional] 
**Rootpass** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsOrderPutResponse = Initialize-InterserverApiVpsOrderPutResponse  -VarContinue null `
 -Errors null `
 -CouponCode null `
 -ServiceCost null `
 -SliceCost null `
 -ServiceType null `
 -RepeatSliceCost null `
 -OriginalSliceCost null `
 -OriginalCost null `
 -RepeatServiceCost null `
 -MonthlyServiceCost null `
 -Custid null `
 -Os null `
 -Slices null `
 -Platform null `
 -Controlpanel null `
 -Period null `
 -Location null `
 -Version null `
 -Hostname null `
 -Coupon null `
 -Rootpass null
```

- Convert the resource to JSON
```powershell
$VpsOrderPutResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

