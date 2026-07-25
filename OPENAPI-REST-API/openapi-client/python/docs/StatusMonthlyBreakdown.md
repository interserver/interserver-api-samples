# StatusMonthlyBreakdown

Monthly mail delivery status breakdown, showing counts per status category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**failed** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**rejected** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**pending** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**locked** | [**MonthlyCounts**](MonthlyCounts.md) |  | 
**paid** | [**MonthlyCounts**](MonthlyCounts.md) |  | 

## Example

```python
from interserver_api_client.models.status_monthly_breakdown import StatusMonthlyBreakdown

# TODO update the JSON string below
json = "{}"
# create an instance of StatusMonthlyBreakdown from a JSON string
status_monthly_breakdown_instance = StatusMonthlyBreakdown.from_json(json)
# print the JSON string representation of the object
print(StatusMonthlyBreakdown.to_json())

# convert the object into a dict
status_monthly_breakdown_dict = status_monthly_breakdown_instance.to_dict()
# create an instance of StatusMonthlyBreakdown from a dict
status_monthly_breakdown_from_dict = StatusMonthlyBreakdown.from_dict(status_monthly_breakdown_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


