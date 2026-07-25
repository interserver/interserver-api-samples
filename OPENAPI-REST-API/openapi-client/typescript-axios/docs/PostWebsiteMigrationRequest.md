# PostWebsiteMigrationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custPortal** | **string** | URL of the customer\&#39;s current hosting portal. | [optional] [default to undefined]
**regEmail** | **string** | Registered email address at the current host. | [optional] [default to undefined]
**password** | **string** | Password for the current hosting account. | [optional] [default to undefined]
**ctrlPanel** | **string** | URL of the current control panel. | [optional] [default to undefined]
**ftpUsername** | **string** | FTP username at the current host. | [optional] [default to undefined]
**ftpPassword** | **string** | FTP password at the current host. | [optional] [default to undefined]
**siteBusyMig** | **string** | Information about site traffic during migration. | [optional] [default to undefined]
**splReqMig** | **string** | Special requirements for the migration. | [optional] [default to undefined]
**domainReg** | **string** | Whether domain registration assistance is needed. | [optional] [default to undefined]
**dataMig** | **string** | Data migration timing preference. | [optional] [default to undefined]
**domainRegPortal** | **string** | Domain registrar portal URL. | [optional] [default to undefined]
**domainRegEmail** | **string** | Email for the domain registrar account. | [optional] [default to undefined]
**domainRegPassword** | **string** | Password for the domain registrar account. | [optional] [default to undefined]

## Example

```typescript
import { PostWebsiteMigrationRequest } from '@interserver/myadmin-client';

const instance: PostWebsiteMigrationRequest = {
    custPortal,
    regEmail,
    password,
    ctrlPanel,
    ftpUsername,
    ftpPassword,
    siteBusyMig,
    splReqMig,
    domainReg,
    dataMig,
    domainRegPortal,
    domainRegEmail,
    domainRegPassword,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
