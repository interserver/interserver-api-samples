# MailBlockRspamd

This is a block entry from the rspamd block list.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **str** |  | 
**subject** | **str** |  | 

## Example

```python
from interserver_api_client.models.mail_block_rspamd import MailBlockRspamd

# TODO update the JSON string below
json = "{}"
# create an instance of MailBlockRspamd from a JSON string
mail_block_rspamd_instance = MailBlockRspamd.from_json(json)
# print the JSON string representation of the object
print(MailBlockRspamd.to_json())

# convert the object into a dict
mail_block_rspamd_dict = mail_block_rspamd_instance.to_dict()
# create an instance of MailBlockRspamd from a dict
mail_block_rspamd_from_dict = MailBlockRspamd.from_dict(mail_block_rspamd_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


