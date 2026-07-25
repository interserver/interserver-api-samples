# SendMailAdv

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** | The subject or title of the email | 
**body** | **String** | The main email contents. | 
**from** | [**models::EmailAddressName**](EmailAddressName.md) |  | 
**to** | [**Vec<models::EmailAddressName>**](EmailAddressName.md) | A list of destionation email addresses to send this to | 
**replyto** | Option<[**Vec<models::EmailAddressName>**](EmailAddressName.md)> | (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. | [optional]
**cc** | Option<[**Vec<models::EmailAddressName>**](EmailAddressName.md)> | (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. | [optional]
**bcc** | Option<[**Vec<models::EmailAddressName>**](EmailAddressName.md)> | (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. | [optional]
**attachments** | Option<[**Vec<models::MailAttachment>**](MailAttachment.md)> | (optional) File attachments to include in the email.  The file contents must be base64 encoded! | [optional]
**id** | Option<**i64**> | (optional)  ID of the Mail order within our system to use as the Mail Account. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


