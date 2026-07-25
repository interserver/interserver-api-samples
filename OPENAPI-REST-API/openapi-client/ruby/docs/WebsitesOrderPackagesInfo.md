# InterServerClient::WebsitesOrderPackagesInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **services_id** | **String** | The ID of the package. |  |
| **services_name** | **String** | The name of the package. |  |
| **services_cost** | **String** | The cost of the package. |  |
| **services_category** | **String** | The category of the package. |  |
| **services_buyable** | **String** | Indicates if the package is buyable (1 for yes, 0 for no). |  |
| **services_type** | **String** | The type of the package. |  |
| **services_module** | **String** | The module of the package. |  |
| **services_description** | **String** | Description of the package. |  |
| **services_field1** | **String** | Additional field 1 for the package. | [optional] |
| **services_field2** | **String** | Additional field 2 for the package. | [optional] |
| **services_html** | **String** | HTML content for the package. | [optional] |
| **services_moreinfo_url** | **String** | URL for more information about the package. | [optional] |
| **services_hidden** | **String** | Indicates if the package is hidden (1 for yes, 0 for no). | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsitesOrderPackagesInfo.new(
  services_id: 11440,
  services_name: DA BOOST X,
  services_cost: 69.95,
  services_category: 204,
  services_buyable: 1,
  services_type: 206,
  services_module: webhosting,
  services_description: Direct Admin Web hosting package with 10x more resources over our standard web hosting package.,
  services_field1: ,
  services_field2: BoostX,
  services_html: ,
  services_moreinfo_url: ,
  services_hidden: 0
)
```

