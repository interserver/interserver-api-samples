# PostWebsiteBuyIpRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ips** | **System.Collections.Hashtable** | A map of IP addresses to their desired reverse DNS hostnames. | [optional] 

## Examples

- Prepare the resource
```powershell
$PostWebsiteBuyIpRequest = Initialize-InterserverApiPostWebsiteBuyIpRequest  -Ips null
```

- Convert the resource to JSON
```powershell
$PostWebsiteBuyIpRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

