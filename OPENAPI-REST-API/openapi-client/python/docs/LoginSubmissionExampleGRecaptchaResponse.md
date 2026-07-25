# LoginSubmissionExampleGRecaptchaResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**v_is_shallow** | **bool** |  | [optional] 
**dep** | [**LoginSubmissionExampleGRecaptchaResponseDep**](LoginSubmissionExampleGRecaptchaResponseDep.md) |  | [optional] 
**v_is_ref** | **bool** |  | [optional] 
**raw_value** | **str** |  | [optional] 
**value** | **str** |  | [optional] 

## Example

```python
from interserver_api_client.models.login_submission_example_g_recaptcha_response import LoginSubmissionExampleGRecaptchaResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSubmissionExampleGRecaptchaResponse from a JSON string
login_submission_example_g_recaptcha_response_instance = LoginSubmissionExampleGRecaptchaResponse.from_json(json)
# print the JSON string representation of the object
print(LoginSubmissionExampleGRecaptchaResponse.to_json())

# convert the object into a dict
login_submission_example_g_recaptcha_response_dict = login_submission_example_g_recaptcha_response_instance.to_dict()
# create an instance of LoginSubmissionExampleGRecaptchaResponse from a dict
login_submission_example_g_recaptcha_response_from_dict = LoginSubmissionExampleGRecaptchaResponse.from_dict(login_submission_example_g_recaptcha_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


