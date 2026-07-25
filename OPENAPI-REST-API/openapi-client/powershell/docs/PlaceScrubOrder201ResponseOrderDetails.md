# PlaceScrubOrder201ResponseOrderDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalCost** | **Int32** |  | [optional] 
**ServiceId** | **Int32** |  | [optional] 
**InvoiceId** | **Int32** |  | [optional] 
**InvoiceDescription** | **String** |  | [optional] 
**CjParams** | [**PlaceScrubOrder201ResponseOrderDetailsCjParams**](PlaceScrubOrder201ResponseOrderDetailsCjParams.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlaceScrubOrder201ResponseOrderDetails = Initialize-InterserverApiPlaceScrubOrder201ResponseOrderDetails  -TotalCost 5 `
 -ServiceId 12346 `
 -InvoiceId 2746273 `
 -InvoiceDescription Scrub + Current Ip `
 -CjParams null
```

- Convert the resource to JSON
```powershell
$PlaceScrubOrder201ResponseOrderDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

