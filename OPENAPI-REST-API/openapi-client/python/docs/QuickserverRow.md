# QuickserverRow

A result row from the `Quickservers` `GET` request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qs_id** | **str** | The id of the qs. | 
**qs_name** | **str** | The name of the qs. | 
**cost** | **str** | The cost of the qs. | 
**qs_hostname** | **str** | The hostname of the qs. | 
**qs_status** | **str** | The status of the qs. | 
**qs_comment** | **str** | The comment of the qs. | 

## Example

```python
from interserver_api_client.models.quickserver_row import QuickserverRow

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverRow from a JSON string
quickserver_row_instance = QuickserverRow.from_json(json)
# print the JSON string representation of the object
print(QuickserverRow.to_json())

# convert the object into a dict
quickserver_row_dict = quickserver_row_instance.to_dict()
# create an instance of QuickserverRow from a dict
quickserver_row_from_dict = QuickserverRow.from_dict(quickserver_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


