# InterServerClient::MailSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**MailServiceInfo**](MailServiceInfo.md) |  |  |
| **client_links** | [**Array&lt;MailClientLink&gt;**](MailClientLink.md) | Links related to the mail service for clients. |  |
| **billing_details** | [**MailBillingDetails**](MailBillingDetails.md) |  |  |
| **cust_currency** | **String** | The customer&#39;s currency. |  |
| **cust_currency_symbol** | **String** | The currency symbol for the customer. |  |
| **package** | **String** | The package of the mail service. |  |
| **extra_info_tables** | [**MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  |  |
| **service_type** | [**MailServiceType**](MailServiceType.md) |  |  |
| **usage_count** | **String** | The usage count of the mail service. |  |
| **service_extra** | **Array&lt;String&gt;** | Extra information for the mail service. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailSchema.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: USD,
  cust_currency_symbol: $,
  package: MailBaby Mail,
  extra_info_tables: null,
  service_type: null,
  usage_count: 0,
  service_extra: []
)
```

