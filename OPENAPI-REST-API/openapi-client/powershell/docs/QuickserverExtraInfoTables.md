# QuickserverExtraInfoTables
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpInfo** | [**QuickserverIpInfo**](QuickserverIpInfo.md) |  | [optional] 
**Addons** | [**QuickserverAddons**](QuickserverAddons.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverExtraInfoTables = Initialize-InterserverApiQuickserverExtraInfoTables  -IpInfo null `
 -Addons null
```

- Convert the resource to JSON
```powershell
$QuickserverExtraInfoTables | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

