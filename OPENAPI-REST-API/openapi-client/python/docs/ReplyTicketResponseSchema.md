# ReplyTicketResponseSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**post_id** | **int** |  | [optional] 

## Example

```python
from interserver_api_client.models.reply_ticket_response_schema import ReplyTicketResponseSchema

# TODO update the JSON string below
json = "{}"
# create an instance of ReplyTicketResponseSchema from a JSON string
reply_ticket_response_schema_instance = ReplyTicketResponseSchema.from_json(json)
# print the JSON string representation of the object
print(ReplyTicketResponseSchema.to_json())

# convert the object into a dict
reply_ticket_response_schema_dict = reply_ticket_response_schema_instance.to_dict()
# create an instance of ReplyTicketResponseSchema from a dict
reply_ticket_response_schema_from_dict = ReplyTicketResponseSchema.from_dict(reply_ticket_response_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


