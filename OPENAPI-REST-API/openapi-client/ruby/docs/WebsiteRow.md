# InterServerClient::WebsiteRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | The id of the website. |  |
| **website_hostname** | **String** | The hostname of the website. |  |
| **repeat_invoices_cost** | **String** | The repeat invoices cost of the website. |  |
| **website_status** | **String** | The status of the website. |  |
| **services_name** | **String** | The services name of the website. |  |
| **website_comment** | **String** | The comment of the website. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsiteRow.new(
  website_id: 376359,
  website_hostname: hussfamily.com,
  repeat_invoices_cost: 5.99,
  website_status: active,
  services_name: Standard Web Hosting,
  website_comment: website for manhattan project.
)
```

