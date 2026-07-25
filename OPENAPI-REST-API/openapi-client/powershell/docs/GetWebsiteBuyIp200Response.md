# GetWebsiteBuyIp200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ips** | **System.Collections.Hashtable** | A map of IP addresses to their current reverse DNS hostnames. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetWebsiteBuyIp200Response = Initialize-InterserverApiGetWebsiteBuyIp200Response  -Ips null
```

- Convert the resource to JSON
```powershell
$GetWebsiteBuyIp200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

