# MailBlocks

The listing of blocked emails.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local** | [**List[MailBlockClickHouse]**](MailBlockClickHouse.md) |  | 
**mbtrap** | [**List[MailBlockClickHouse]**](MailBlockClickHouse.md) |  | 
**subject** | [**List[MailBlockRspamd]**](MailBlockRspamd.md) |  | 

## Example

```python
from interserver_api_client.models.mail_blocks import MailBlocks

# TODO update the JSON string below
json = "{}"
# create an instance of MailBlocks from a JSON string
mail_blocks_instance = MailBlocks.from_json(json)
# print the JSON string representation of the object
print(MailBlocks.to_json())

# convert the object into a dict
mail_blocks_dict = mail_blocks_instance.to_dict()
# create an instance of MailBlocks from a dict
mail_blocks_from_dict = MailBlocks.from_dict(mail_blocks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


