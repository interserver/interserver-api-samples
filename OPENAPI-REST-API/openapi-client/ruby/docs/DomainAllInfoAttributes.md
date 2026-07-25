# InterServerClient::DomainAllInfoAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_set** | [**DomainAllInfoAttributesContactSet**](DomainAllInfoAttributesContactSet.md) |  | [optional] |
| **registry_createdate** | **String** |  | [optional] |
| **registry_expiredate** | **String** |  | [optional] |
| **tld_data** | **String** |  | [optional] |
| **let_expire** | **String** |  | [optional] |
| **auto_renew** | **String** |  | [optional] |
| **sponsoring_rsp** | **String** |  | [optional] |
| **gdpr_consent_status** | **String** |  | [optional] |
| **nameserver_list** | [**Array&lt;DomainNameServer&gt;**](DomainNameServer.md) |  | [optional] |
| **registry_updatedate** | **String** |  | [optional] |
| **affiliate_id** | **String** |  | [optional] |
| **expiredate** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainAllInfoAttributes.new(
  contact_set: null,
  registry_createdate: null,
  registry_expiredate: null,
  tld_data: null,
  let_expire: null,
  auto_renew: null,
  sponsoring_rsp: null,
  gdpr_consent_status: null,
  nameserver_list: null,
  registry_updatedate: null,
  affiliate_id: null,
  expiredate: null
)
```

