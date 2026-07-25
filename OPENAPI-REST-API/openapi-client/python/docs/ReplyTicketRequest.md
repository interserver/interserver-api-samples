# ReplyTicketRequest

Post reply to your ticket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.reply_ticket_request import ReplyTicketRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReplyTicketRequest from a JSON string
reply_ticket_request_instance = ReplyTicketRequest.from_json(json)
# print the JSON string representation of the object
print(ReplyTicketRequest.to_json())

# convert the object into a dict
reply_ticket_request_dict = reply_ticket_request_instance.to_dict()
# create an instance of ReplyTicketRequest from a dict
reply_ticket_request_from_dict = ReplyTicketRequest.from_dict(reply_ticket_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


