# PlaceScrubOrder201ResponseOrderDetailsCjParams
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerTagId** | **Int32** |  | [optional] 
**CID** | **Int32** |  | [optional] 
**OID** | **String** |  | [optional] 
**TYPE** | **Int32** |  | [optional] 
**ITEM1** | **String** |  | [optional] 
**AMT1** | **Int32** |  | [optional] 
**QTY1** | **Int32** |  | [optional] 
**CURRENCY** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlaceScrubOrder201ResponseOrderDetailsCjParams = Initialize-InterserverApiPlaceScrubOrder201ResponseOrderDetailsCjParams  -ContainerTagId 1684 `
 -CID 2314 `
 -OID scrub_ips12424 `
 -TYPE 2242343242 `
 -ITEM1 scrub_ips904 `
 -AMT1 5 `
 -QTY1 1 `
 -CURRENCY USD
```

- Convert the resource to JSON
```powershell
$PlaceScrubOrder201ResponseOrderDetailsCjParams | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

