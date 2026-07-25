# TicketPostDetailsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**post_id** | **int** |  | [optional] 
**var_date** | **str** |  | [optional] 
**contents** | **str** |  | [optional] 
**creator** | **str** |  | [optional] 
**creator_email** | **str** |  | [optional] 
**creator_name** | **str** |  | [optional] 
**hasattachments** | **int** |  | [optional] 
**attachment_download** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.ticket_post_details_inner import TicketPostDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of TicketPostDetailsInner from a JSON string
ticket_post_details_inner_instance = TicketPostDetailsInner.from_json(json)
# print the JSON string representation of the object
print(TicketPostDetailsInner.to_json())

# convert the object into a dict
ticket_post_details_inner_dict = ticket_post_details_inner_instance.to_dict()
# create an instance of TicketPostDetailsInner from a dict
ticket_post_details_inner_from_dict = TicketPostDetailsInner.from_dict(ticket_post_details_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


