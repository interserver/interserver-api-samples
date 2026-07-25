# InitiatePayment200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). | [optional] 
**redirect** | **str** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). | [optional] 
**action** | **str** | Form action URL (when type is &#x60;submit&#x60;). | [optional] 
**method** | **str** | HTTP method for the form submission (when type is &#x60;submit&#x60;). | [optional] 
**items** | **object** | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). | [optional] 
**text** | **str** | Status or result text. | [optional] 

## Example

```python
from interserver_api_client.models.initiate_payment200_response import InitiatePayment200Response

# TODO update the JSON string below
json = "{}"
# create an instance of InitiatePayment200Response from a JSON string
initiate_payment200_response_instance = InitiatePayment200Response.from_json(json)
# print the JSON string representation of the object
print(InitiatePayment200Response.to_json())

# convert the object into a dict
initiate_payment200_response_dict = initiate_payment200_response_instance.to_dict()
# create an instance of InitiatePayment200Response from a dict
initiate_payment200_response_from_dict = InitiatePayment200Response.from_dict(initiate_payment200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


