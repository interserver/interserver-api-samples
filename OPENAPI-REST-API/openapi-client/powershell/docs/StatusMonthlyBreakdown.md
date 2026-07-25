# StatusMonthlyBreakdown
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**Failed** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**Rejected** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**Pending** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**Locked** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**Paid** | [**MonthlyCounts**](MonthlyCounts.md) |  | 

## Examples

- Prepare the resource
```powershell
$StatusMonthlyBreakdown = Initialize-InterserverApiStatusMonthlyBreakdown  -Default null `
 -Failed null `
 -Rejected null `
 -Pending null `
 -Locked null `
 -Paid null
```

- Convert the resource to JSON
```powershell
$StatusMonthlyBreakdown | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

