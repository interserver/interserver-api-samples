# HomeServices

Users services.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domains** | [**HomeServicesDomains**](HomeServicesDomains.md) |  | [optional] [default to undefined]
**webhosting** | [**HomeServicesWebhosting**](HomeServicesWebhosting.md) |  | [optional] [default to undefined]
**vps** | [**HomeServicesVps**](HomeServicesVps.md) |  | [optional] [default to undefined]
**licenses** | [**HomeServicesLicenses**](HomeServicesLicenses.md) |  | [optional] [default to undefined]
**servers** | [**HomeServicesServers**](HomeServicesServers.md) |  | [optional] [default to undefined]
**backups** | [**HomeServicesBackups**](HomeServicesBackups.md) |  | [optional] [default to undefined]

## Example

```typescript
import { HomeServices } from '@interserver/myadmin-client';

const instance: HomeServices = {
    domains,
    webhosting,
    vps,
    licenses,
    servers,
    backups,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
