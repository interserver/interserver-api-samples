# VpsTrafficTotalsResposne
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Day** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**Month** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**Year** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**All** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficTotalsResposne = Initialize-InterserverApiVpsTrafficTotalsResposne  -Day null `
 -Month null `
 -Year null `
 -All null
```

- Convert the resource to JSON
```powershell
$VpsTrafficTotalsResposne | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

