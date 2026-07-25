# VpsOrderPlatformPackages
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kvm** | **Decimal** |  | [optional] 
**Kvmstorage** | **Decimal** |  | [optional] 
**Hyperv** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsOrderPlatformPackages = Initialize-InterserverApiVpsOrderPlatformPackages  -Kvm 32 `
 -Kvmstorage 57 `
 -Hyperv 54
```

- Convert the resource to JSON
```powershell
$VpsOrderPlatformPackages | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

