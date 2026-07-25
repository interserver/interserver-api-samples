# CloseTicketResponseSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**text** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.close_ticket_response_schema import CloseTicketResponseSchema

# TODO update the JSON string below
json = "{}"
# create an instance of CloseTicketResponseSchema from a JSON string
close_ticket_response_schema_instance = CloseTicketResponseSchema.from_json(json)
# print the JSON string representation of the object
print(CloseTicketResponseSchema.to_json())

# convert the object into a dict
close_ticket_response_schema_dict = close_ticket_response_schema_instance.to_dict()
# create an instance of CloseTicketResponseSchema from a dict
close_ticket_response_schema_from_dict = CloseTicketResponseSchema.from_dict(close_ticket_response_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


