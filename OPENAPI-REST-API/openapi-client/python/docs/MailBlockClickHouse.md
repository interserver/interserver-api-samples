# MailBlockClickHouse

A block entry from the clickhouse mailblocks server.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_date** | **date** |  | 
**var_from** | **str** |  | 
**message_id** | **str** |  | 
**subject** | **str** |  | 
**to** | **str** |  | 

## Example

```python
from interserver_api_client.models.mail_block_click_house import MailBlockClickHouse

# TODO update the JSON string below
json = "{}"
# create an instance of MailBlockClickHouse from a JSON string
mail_block_click_house_instance = MailBlockClickHouse.from_json(json)
# print the JSON string representation of the object
print(MailBlockClickHouse.to_json())

# convert the object into a dict
mail_block_click_house_dict = mail_block_click_house_instance.to_dict()
# create an instance of MailBlockClickHouse from a dict
mail_block_click_house_from_dict = MailBlockClickHouse.from_dict(mail_block_click_house_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


