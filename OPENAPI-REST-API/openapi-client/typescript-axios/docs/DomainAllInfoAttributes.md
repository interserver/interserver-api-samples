# DomainAllInfoAttributes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_set** | [**DomainAllInfoAttributesContactSet**](DomainAllInfoAttributesContactSet.md) |  | [optional] [default to undefined]
**registry_createdate** | **string** |  | [optional] [default to undefined]
**registry_expiredate** | **string** |  | [optional] [default to undefined]
**tld_data** | **string** |  | [optional] [default to undefined]
**let_expire** | **string** |  | [optional] [default to undefined]
**auto_renew** | **string** |  | [optional] [default to undefined]
**sponsoring_rsp** | **string** |  | [optional] [default to undefined]
**gdpr_consent_status** | **string** |  | [optional] [default to undefined]
**nameserver_list** | [**Array&lt;DomainNameServer&gt;**](DomainNameServer.md) |  | [optional] [default to undefined]
**registry_updatedate** | **string** |  | [optional] [default to undefined]
**affiliate_id** | **string** |  | [optional] [default to undefined]
**expiredate** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DomainAllInfoAttributes } from '@interserver/myadmin-client';

const instance: DomainAllInfoAttributes = {
    contact_set,
    registry_createdate,
    registry_expiredate,
    tld_data,
    let_expire,
    auto_renew,
    sponsoring_rsp,
    gdpr_consent_status,
    nameserver_list,
    registry_updatedate,
    affiliate_id,
    expiredate,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
