# UpdateTicketResponseSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.update_ticket_response_schema import UpdateTicketResponseSchema

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTicketResponseSchema from a JSON string
update_ticket_response_schema_instance = UpdateTicketResponseSchema.from_json(json)
# print the JSON string representation of the object
print(UpdateTicketResponseSchema.to_json())

# convert the object into a dict
update_ticket_response_schema_dict = update_ticket_response_schema_instance.to_dict()
# create an instance of UpdateTicketResponseSchema from a dict
update_ticket_response_schema_from_dict = UpdateTicketResponseSchema.from_dict(update_ticket_response_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


