# MailServiceInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mail_id** | **str** | The ID of the mail service. | 
**mail_username** | **str** | The username associated with the mail service. | [optional] 
**mail_type** | **str** | The type of mail service. | 
**mail_currency** | **str** | The currency of the mail service. | 
**mail_order_date** | **str** | The order date of the mail service. | 
**mail_custid** | **str** | The customer ID associated with the mail service. | 
**mail_quota** | **str** | The mail quota for the service. | 
**mail_ip** | **str** | The IP address associated with the mail service. | [optional] 
**mail_status** | **str** | The status of the mail service. | 
**mail_invoice** | **str** | The invoice ID of the mail service. | 
**mail_coupon** | **str** | The coupon associated with the mail service. | [optional] 
**mail_extra** | **str** | Additional information for the mail service. | [optional] 
**mail_server_status** | **str** | The server status of the mail service. | [optional] 
**mail_comment** | **str** | Additional comments for the mail service. | [optional] 

## Example

```python
from interserver_api_client.models.mail_service_info import MailServiceInfo

# TODO update the JSON string below
json = "{}"
# create an instance of MailServiceInfo from a JSON string
mail_service_info_instance = MailServiceInfo.from_json(json)
# print the JSON string representation of the object
print(MailServiceInfo.to_json())

# convert the object into a dict
mail_service_info_dict = mail_service_info_instance.to_dict()
# create an instance of MailServiceInfo from a dict
mail_service_info_from_dict = MailServiceInfo.from_dict(mail_service_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


