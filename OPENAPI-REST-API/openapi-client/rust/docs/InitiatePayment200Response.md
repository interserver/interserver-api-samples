# InitiatePayment200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | Option<**Type**> | The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result). (enum: redirect, submit, single) | [optional]
**redirect** | Option<**String**> | URL to redirect the user to for payment (when type is `redirect`). | [optional]
**action** | Option<**String**> | Form action URL (when type is `submit`). | [optional]
**method** | Option<**String**> | HTTP method for the form submission (when type is `submit`). | [optional]
**items** | Option<**serde_json::Value**> | Form field name-value pairs to submit (when type is `submit`). | [optional]
**text** | Option<**String**> | Status or result text. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


