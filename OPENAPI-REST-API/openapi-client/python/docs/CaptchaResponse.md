# CaptchaResponse

A base-64 encoded captcha image.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captcha** | **str** | The base64 encoded captcha image. | 

## Example

```python
from interserver_api_client.models.captcha_response import CaptchaResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CaptchaResponse from a JSON string
captcha_response_instance = CaptchaResponse.from_json(json)
# print the JSON string representation of the object
print(CaptchaResponse.to_json())

# convert the object into a dict
captcha_response_dict = captcha_response_instance.to_dict()
# create an instance of CaptchaResponse from a dict
captcha_response_from_dict = CaptchaResponse.from_dict(captcha_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


