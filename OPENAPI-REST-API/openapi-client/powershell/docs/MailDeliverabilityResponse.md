# MailDeliverabilityResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Stat** | [**SystemCollectionsHashtable**](.md) | Delivered and bounced counts. | [optional] 
**Percent** | **Decimal** | Bounce percentage. | [optional] 
**TableData** | [**String[][]**](Array.md) | Detailed deliverability breakdown by sender or domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$MailDeliverabilityResponse = Initialize-InterserverApiMailDeliverabilityResponse  -Stat null `
 -Percent null `
 -TableData null
```

- Convert the resource to JSON
```powershell
$MailDeliverabilityResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

