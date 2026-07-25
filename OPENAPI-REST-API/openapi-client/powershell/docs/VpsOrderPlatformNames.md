# VpsOrderPlatformNames
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kvm** | **String** |  | [optional] 
**Kvmstorage** | **String** |  | [optional] 
**Hyperv** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsOrderPlatformNames = Initialize-InterserverApiVpsOrderPlatformNames  -Kvm KVM `
 -Kvmstorage KVM Storage `
 -Hyperv HyperV
```

- Convert the resource to JSON
```powershell
$VpsOrderPlatformNames | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

