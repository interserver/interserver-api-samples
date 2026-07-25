# PutScrubIps200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_continue** | **bool** |  | [optional] 
**errors** | **List[str]** |  | [optional] 
**service_type** | **int** |  | [optional] 
**service_cost** | **float** |  | [optional] 
**original_cost** | **float** |  | [optional] 
**repeat_service_cost** | **float** |  | [optional] 

## Example

```python
from interserver_api_client.models.put_scrub_ips200_response import PutScrubIps200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PutScrubIps200Response from a JSON string
put_scrub_ips200_response_instance = PutScrubIps200Response.from_json(json)
# print the JSON string representation of the object
print(PutScrubIps200Response.to_json())

# convert the object into a dict
put_scrub_ips200_response_dict = put_scrub_ips200_response_instance.to_dict()
# create an instance of PutScrubIps200Response from a dict
put_scrub_ips200_response_from_dict = PutScrubIps200Response.from_dict(put_scrub_ips200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


