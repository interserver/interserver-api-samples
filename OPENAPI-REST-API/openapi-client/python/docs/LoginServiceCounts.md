# LoginServiceCounts

Order counts per module.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vps** | **int** | The number of total VPS orders that have been placed in our billing system. | 
**websites** | **int** | The number of total website orders that have been placed in our billing system. | 
**servers** | **int** | The number of total server orders that have been placed in our billing system. | 

## Example

```python
from interserver_api_client.models.login_service_counts import LoginServiceCounts

# TODO update the JSON string below
json = "{}"
# create an instance of LoginServiceCounts from a JSON string
login_service_counts_instance = LoginServiceCounts.from_json(json)
# print the JSON string representation of the object
print(LoginServiceCounts.to_json())

# convert the object into a dict
login_service_counts_dict = login_service_counts_instance.to_dict()
# create an instance of LoginServiceCounts from a dict
login_service_counts_from_dict = LoginServiceCounts.from_dict(login_service_counts_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


