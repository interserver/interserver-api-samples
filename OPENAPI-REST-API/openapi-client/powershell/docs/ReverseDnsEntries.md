# ReverseDnsEntries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ips** | [**System.Collections.Hashtable**](AnyType.md) | The IPs you have access to and their current reverse dns mapping. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReverseDnsEntries = Initialize-InterserverApiReverseDnsEntries  -Ips null
```

- Convert the resource to JSON
```powershell
$ReverseDnsEntries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

