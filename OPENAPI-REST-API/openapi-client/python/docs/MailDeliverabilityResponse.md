# MailDeliverabilityResponse

Deliverability statistics for a mail service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stat** | **object** | Delivered and bounced counts. | [optional] 
**percent** | **float** | Bounce percentage. | [optional] 
**table_data** | **List[List[str]]** | Detailed deliverability breakdown by sender or domain. | [optional] 

## Example

```python
from interserver_api_client.models.mail_deliverability_response import MailDeliverabilityResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MailDeliverabilityResponse from a JSON string
mail_deliverability_response_instance = MailDeliverabilityResponse.from_json(json)
# print the JSON string representation of the object
print(MailDeliverabilityResponse.to_json())

# convert the object into a dict
mail_deliverability_response_dict = mail_deliverability_response_instance.to_dict()
# create an instance of MailDeliverabilityResponse from a dict
mail_deliverability_response_from_dict = MailDeliverabilityResponse.from_dict(mail_deliverability_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


