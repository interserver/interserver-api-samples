# swagger.model.SendMailAdv

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** | The subject or title of the email | [default to null]
**body** | **String** | The main email contents. | [default to null]
**from** | [**EmailAddressName**](EmailAddressName.md) |  | [default to null]
**to** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | A list of destionation email addresses to send this to | [default to []]
**replyto** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. | [optional] [default to []]
**cc** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. | [optional] [default to []]
**bcc** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. | [optional] [default to []]
**attachments** | [**List&lt;MailAttachment&gt;**](MailAttachment.md) | (optional) File attachments to include in the email.  The file contents must be base64 encoded! | [optional] [default to []]
**id** | **int** | (optional)  ID of the Mail order within our system to use as the Mail Account. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

