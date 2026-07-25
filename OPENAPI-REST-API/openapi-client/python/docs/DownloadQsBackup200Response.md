# DownloadQsBackup200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **str** |  | [optional] 
**url** | **str** | A pre-signed download URL valid for 24 hours. | [optional] 

## Example

```python
from interserver_api_client.models.download_qs_backup200_response import DownloadQsBackup200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadQsBackup200Response from a JSON string
download_qs_backup200_response_instance = DownloadQsBackup200Response.from_json(json)
# print the JSON string representation of the object
print(DownloadQsBackup200Response.to_json())

# convert the object into a dict
download_qs_backup200_response_dict = download_qs_backup200_response_instance.to_dict()
# create an instance of DownloadQsBackup200Response from a dict
download_qs_backup200_response_from_dict = DownloadQsBackup200Response.from_dict(download_qs_backup200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


