# InlineResponse20010

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type_** | **string** | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). | [optional] [default to null]
**Redirect** | **string** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). | [optional] [default to null]
**Action** | **string** | Form action URL (when type is &#x60;submit&#x60;). | [optional] [default to null]
**Method** | **string** | HTTP method for the form submission (when type is &#x60;submit&#x60;). | [optional] [default to null]
**Items** | [***interface{}**](interface{}.md) | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). | [optional] [default to null]
**Text** | **string** | Status or result text. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

