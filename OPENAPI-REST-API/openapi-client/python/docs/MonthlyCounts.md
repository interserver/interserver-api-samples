# MonthlyCounts

A map of month labels (e.g., \"2024-01\") to counts for a specific mail status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from interserver_api_client.models.monthly_counts import MonthlyCounts

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyCounts from a JSON string
monthly_counts_instance = MonthlyCounts.from_json(json)
# print the JSON string representation of the object
print(MonthlyCounts.to_json())

# convert the object into a dict
monthly_counts_dict = monthly_counts_instance.to_dict()
# create an instance of MonthlyCounts from a dict
monthly_counts_from_dict = MonthlyCounts.from_dict(monthly_counts_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


