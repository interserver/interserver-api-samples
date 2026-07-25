

# InitiatePayment200Response

The class is defined in **[InitiatePayment200Response.java](../../src/main/java/org/openapitools/model/InitiatePayment200Response.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TypeEnum**](#TypeEnum) | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). |  [optional property]
**redirect** | `String` | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). |  [optional property]
**action** | `String` | Form action URL (when type is &#x60;submit&#x60;). |  [optional property]
**method** | `String` | HTTP method for the form submission (when type is &#x60;submit&#x60;). |  [optional property]
**items** | `Object` | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). |  [optional property]
**text** | `String` | Status or result text. |  [optional property]

## TypeEnum

Name | Value
---- | -----
REDIRECT | `"redirect"`
SUBMIT | `"submit"`
SINGLE | `"single"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`







