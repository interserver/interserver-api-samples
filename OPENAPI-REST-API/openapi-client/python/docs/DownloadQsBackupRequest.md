# DownloadQsBackupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | **str** | The backup filename to download. | 

## Example

```python
from interserver_api_client.models.download_qs_backup_request import DownloadQsBackupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadQsBackupRequest from a JSON string
download_qs_backup_request_instance = DownloadQsBackupRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadQsBackupRequest.to_json())

# convert the object into a dict
download_qs_backup_request_dict = download_qs_backup_request_instance.to_dict()
# create an instance of DownloadQsBackupRequest from a dict
download_qs_backup_request_from_dict = DownloadQsBackupRequest.from_dict(download_qs_backup_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


