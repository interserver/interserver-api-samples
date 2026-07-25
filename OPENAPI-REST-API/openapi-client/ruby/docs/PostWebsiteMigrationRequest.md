# InterServerClient::PostWebsiteMigrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cust_portal** | **String** | URL of the customer&#39;s current hosting portal. | [optional] |
| **reg_email** | **String** | Registered email address at the current host. | [optional] |
| **password** | **String** | Password for the current hosting account. | [optional] |
| **ctrl_panel** | **String** | URL of the current control panel. | [optional] |
| **ftp_username** | **String** | FTP username at the current host. | [optional] |
| **ftp_password** | **String** | FTP password at the current host. | [optional] |
| **site_busy_mig** | **String** | Information about site traffic during migration. | [optional] |
| **spl_req_mig** | **String** | Special requirements for the migration. | [optional] |
| **domain_reg** | **String** | Whether domain registration assistance is needed. | [optional] |
| **data_mig** | **String** | Data migration timing preference. | [optional] |
| **domain_reg_portal** | **String** | Domain registrar portal URL. | [optional] |
| **domain_reg_email** | **String** | Email for the domain registrar account. | [optional] |
| **domain_reg_password** | **String** | Password for the domain registrar account. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PostWebsiteMigrationRequest.new(
  cust_portal: null,
  reg_email: null,
  password: null,
  ctrl_panel: null,
  ftp_username: null,
  ftp_password: null,
  site_busy_mig: null,
  spl_req_mig: null,
  domain_reg: null,
  data_mig: null,
  domain_reg_portal: null,
  domain_reg_email: null,
  domain_reg_password: null
)
```

