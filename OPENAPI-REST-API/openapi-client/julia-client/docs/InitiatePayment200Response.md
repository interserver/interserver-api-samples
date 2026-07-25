# InitiatePayment200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**`type`** | **`String`** | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). | [optional] [default to nothing]
**`redirect`** | **`String`** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). | [optional] [default to nothing]
**`action`** | **`String`** | Form action URL (when type is &#x60;submit&#x60;). | [optional] [default to nothing]
**`method`** | **`String`** | HTTP method for the form submission (when type is &#x60;submit&#x60;). | [optional] [default to nothing]
**`items`** | **`Any`** | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). | [optional] [default to nothing]
**`text`** | **`String`** | Status or result text. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


