# QuickserverIpTableRow

A single row in the QuickServer IP information table.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **str** | Description | [optional] 
**value** | **str** | Value | [optional] 

## Example

```python
from interserver_api_client.models.quickserver_ip_table_row import QuickserverIpTableRow

# TODO update the JSON string below
json = "{}"
# create an instance of QuickserverIpTableRow from a JSON string
quickserver_ip_table_row_instance = QuickserverIpTableRow.from_json(json)
# print the JSON string representation of the object
print(QuickserverIpTableRow.to_json())

# convert the object into a dict
quickserver_ip_table_row_dict = quickserver_ip_table_row_instance.to_dict()
# create an instance of QuickserverIpTableRow from a dict
quickserver_ip_table_row_from_dict = QuickserverIpTableRow.from_dict(quickserver_ip_table_row_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


