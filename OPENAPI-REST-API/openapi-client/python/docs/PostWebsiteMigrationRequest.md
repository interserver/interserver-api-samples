# PostWebsiteMigrationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cust_portal** | **str** | URL of the customer&#39;s current hosting portal. | [optional] 
**reg_email** | **str** | Registered email address at the current host. | [optional] 
**password** | **str** | Password for the current hosting account. | [optional] 
**ctrl_panel** | **str** | URL of the current control panel. | [optional] 
**ftp_username** | **str** | FTP username at the current host. | [optional] 
**ftp_password** | **str** | FTP password at the current host. | [optional] 
**site_busy_mig** | **str** | Information about site traffic during migration. | [optional] 
**spl_req_mig** | **str** | Special requirements for the migration. | [optional] 
**domain_reg** | **str** | Whether domain registration assistance is needed. | [optional] 
**data_mig** | **str** | Data migration timing preference. | [optional] 
**domain_reg_portal** | **str** | Domain registrar portal URL. | [optional] 
**domain_reg_email** | **str** | Email for the domain registrar account. | [optional] 
**domain_reg_password** | **str** | Password for the domain registrar account. | [optional] 

## Example

```python
from interserver_api_client.models.post_website_migration_request import PostWebsiteMigrationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PostWebsiteMigrationRequest from a JSON string
post_website_migration_request_instance = PostWebsiteMigrationRequest.from_json(json)
# print the JSON string representation of the object
print(PostWebsiteMigrationRequest.to_json())

# convert the object into a dict
post_website_migration_request_dict = post_website_migration_request_instance.to_dict()
# create an instance of PostWebsiteMigrationRequest from a dict
post_website_migration_request_from_dict = PostWebsiteMigrationRequest.from_dict(post_website_migration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


