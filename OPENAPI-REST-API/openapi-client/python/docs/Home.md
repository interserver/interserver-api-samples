# Home


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_login_ip** | **str** | Last login IP. | 
**last_login** | **str** | Last login time. | 
**currency** | **str** | Currency symbol. | 
**amount** | **str** | Amount with currency. | 
**invoice_list** | **int** | Number of invoices. | 
**balance** | **str** | Balance with currency. | 
**full_name** | **str** | Users full name. | 
**email** | **str** | User email address. | 
**tickets** | **List[str]** | List of tickets. | 
**ticket_status** | [**HomeTicketStatus**](HomeTicketStatus.md) |  | 
**ticket_status_view** | [**HomeTicketStatusView**](HomeTicketStatusView.md) |  | 
**details** | [**HomeDetails**](HomeDetails.md) |  | 
**services** | [**HomeServices**](HomeServices.md) |  | 
**affiliate_amount** | **str** | Affiliate amount with currency. | 

## Example

```python
from interserver_api_client.models.home import Home

# TODO update the JSON string below
json = "{}"
# create an instance of Home from a JSON string
home_instance = Home.from_json(json)
# print the JSON string representation of the object
print(Home.to_json())

# convert the object into a dict
home_dict = home_instance.to_dict()
# create an instance of Home from a dict
home_from_dict = Home.from_dict(home_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


