# AccountInfoPost

Request to update account information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Your name. | 
**address** | **str** | Your address. | 
**city** | **str** | Your city. | 
**state** | **str** | Your state. | 
**zip** | **str** | Your ZIP code. | 
**country** | **str** | Your country. | 
**phone** | **str** | Your phone number. | 
**company** | **str** | Your company name. | [optional] 
**address2** | **str** | Additional address information. | [optional] 
**locale** | **str** | Your preferred locale. | [optional] 
**email_invoices** | **str** | Your email for invoice notifications. | [optional] 
**email_abuse** | **str** | Your email for abuse notifications. | [optional] 
**disable_reset** | **bool** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] 
**disable_reinstall** | **bool** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] 
**disable_server_notifications** | **bool** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] 
**disable_email_notifications** | **bool** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] 
**gstin** | **str** | Your GST identification number (if applicable). | [optional] 

## Example

```python
from interserver_api_client.models.account_info_post import AccountInfoPost

# TODO update the JSON string below
json = "{}"
# create an instance of AccountInfoPost from a JSON string
account_info_post_instance = AccountInfoPost.from_json(json)
# print the JSON string representation of the object
print(AccountInfoPost.to_json())

# convert the object into a dict
account_info_post_dict = account_info_post_instance.to_dict()
# create an instance of AccountInfoPost from a dict
account_info_post_from_dict = AccountInfoPost.from_dict(account_info_post_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


