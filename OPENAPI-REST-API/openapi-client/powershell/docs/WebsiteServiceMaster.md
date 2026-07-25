# WebsiteServiceMaster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WebsiteId** | **String** | Website ID for the service master | [optional] 
**WebsiteName** | **String** | Website name for the service master | [optional] 
**WebsiteIp** | **String** | IP address for the service master | [optional] 
**WebsiteType** | **String** | Website type for the service master | [optional] 
**WebsiteAvailable** | **String** | Availability status for the service master | [optional] 
**WebsiteHdsize** | **String** | Hard drive size for the service master | [optional] 
**WebsiteHdfree** | **String** | Free hard drive space for the service master | [optional] 
**WebsiteLoad** | **String** | Load for the service master | [optional] 
**WebsiteLastUpdate** | **String** | Last update date for the service master | [optional] 
**WebsiteMaxSites** | **String** | Maximum number of sites for the service master | [optional] 
**WebsiteOrder** | **String** | Order number for the service master | [optional] 
**WebsitePartitions** | **String** | Partitions for the service master | [optional] 
**WebsiteDns1** | **String** | DNS server 1 for the service master | [optional] 
**WebsiteDns2** | **String** | DNS server 2 for the service master | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteServiceMaster = Initialize-InterserverApiWebsiteServiceMaster  -WebsiteId 543 `
 -WebsiteName vda4200.is.cc `
 -WebsiteIp 74.50.80.15 `
 -WebsiteType 206 `
 -WebsiteAvailable 0 `
 -WebsiteHdsize 2062 `
 -WebsiteHdfree 196 `
 -WebsiteLoad 6.55 `
 -WebsiteLastUpdate 2023-08-17T23:01:02.000Z `
 -WebsiteMaxSites 300 `
 -WebsiteOrder 58984 `
 -WebsitePartitions null `
 -WebsiteDns1 vda4200a.trouble-free.net `
 -WebsiteDns2 vda4200b.trouble-free.net
```

- Convert the resource to JSON
```powershell
$WebsiteServiceMaster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

