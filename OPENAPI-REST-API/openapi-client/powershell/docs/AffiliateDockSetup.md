# AffiliateDockSetup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AffiliateDockTitle** | **String** |  | [optional] 
**AffiliateDockDescription** | **String** |  | [optional] 
**ReferrerCoupon** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AffiliateDockSetup = Initialize-InterserverApiAffiliateDockSetup  -AffiliateDockTitle null `
 -AffiliateDockDescription null `
 -ReferrerCoupon null
```

- Convert the resource to JSON
```powershell
$AffiliateDockSetup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

