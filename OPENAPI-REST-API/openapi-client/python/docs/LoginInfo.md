# LoginInfo

Basic information useful for rendering a login page.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captcha** | **str** | A base64 encoded image to use for rendering the alternateive captcha. | 
**counts** | [**LoginServiceCounts**](LoginServiceCounts.md) |  | 
**logo** | **str** | A logo image url. | [optional] 
**language** | **str** | The desired langauge to render the site with. | [optional] 

## Example

```python
from interserver_api_client.models.login_info import LoginInfo

# TODO update the JSON string below
json = "{}"
# create an instance of LoginInfo from a JSON string
login_info_instance = LoginInfo.from_json(json)
# print the JSON string representation of the object
print(LoginInfo.to_json())

# convert the object into a dict
login_info_dict = login_info_instance.to_dict()
# create an instance of LoginInfo from a dict
login_info_from_dict = LoginInfo.from_dict(login_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


