# InlineResponse20010

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TypeEnum**](#TypeEnum) | The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result). |  [optional]
**redirect** | **String** | URL to redirect the user to for payment (when type is &#x60;redirect&#x60;). |  [optional]
**action** | **String** | Form action URL (when type is &#x60;submit&#x60;). |  [optional]
**method** | **String** | HTTP method for the form submission (when type is &#x60;submit&#x60;). |  [optional]
**items** | **Object** | Form field name-value pairs to submit (when type is &#x60;submit&#x60;). |  [optional]
**text** | **String** | Status or result text. |  [optional]

<a name="TypeEnum"></a>
## Enum: TypeEnum
Name | Value
---- | -----
REDIRECT | &quot;redirect&quot;
SUBMIT | &quot;submit&quot;
SINGLE | &quot;single&quot;
