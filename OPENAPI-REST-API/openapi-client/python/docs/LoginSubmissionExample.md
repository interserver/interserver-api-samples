# LoginSubmissionExample

The data to submit in the login request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **str** |  | 
**passwd** | **str** |  | 
**remember** | **str** |  | [optional] 
**g_recaptcha_response** | [**LoginSubmissionExampleGRecaptchaResponse**](LoginSubmissionExampleGRecaptchaResponse.md) |  | [optional] 
**tfa** | **str** | Two Factor Authentication Response. | [optional] 

## Example

```python
from interserver_api_client.models.login_submission_example import LoginSubmissionExample

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSubmissionExample from a JSON string
login_submission_example_instance = LoginSubmissionExample.from_json(json)
# print the JSON string representation of the object
print(LoginSubmissionExample.to_json())

# convert the object into a dict
login_submission_example_dict = login_submission_example_instance.to_dict()
# create an instance of LoginSubmissionExample from a dict
login_submission_example_from_dict = LoginSubmissionExample.from_dict(login_submission_example_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


