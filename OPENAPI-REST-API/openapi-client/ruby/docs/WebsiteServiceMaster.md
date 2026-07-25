# InterServerClient::WebsiteServiceMaster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | Website ID for the service master | [optional] |
| **website_name** | **String** | Website name for the service master | [optional] |
| **website_ip** | **String** | IP address for the service master | [optional] |
| **website_type** | **String** | Website type for the service master | [optional] |
| **website_available** | **String** | Availability status for the service master | [optional] |
| **website_hdsize** | **String** | Hard drive size for the service master | [optional] |
| **website_hdfree** | **String** | Free hard drive space for the service master | [optional] |
| **website_load** | **String** | Load for the service master | [optional] |
| **website_last_update** | **String** | Last update date for the service master | [optional] |
| **website_max_sites** | **String** | Maximum number of sites for the service master | [optional] |
| **website_order** | **String** | Order number for the service master | [optional] |
| **website_partitions** | **String** | Partitions for the service master | [optional] |
| **website_dns1** | **String** | DNS server 1 for the service master | [optional] |
| **website_dns2** | **String** | DNS server 2 for the service master | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsiteServiceMaster.new(
  website_id: 543,
  website_name: vda4200.is.cc,
  website_ip: 74.50.80.15,
  website_type: 206,
  website_available: 0,
  website_hdsize: 2062,
  website_hdfree: 196,
  website_load: 6.55,
  website_last_update: 2023-08-17T23:01:02.000Z,
  website_max_sites: 300,
  website_order: 58984,
  website_partitions: null,
  website_dns1: vda4200a.trouble-free.net,
  website_dns2: vda4200b.trouble-free.net
)
```

