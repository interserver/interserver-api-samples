# SendMailAdv

Details for an Email

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **string** | The subject or title of the email | [default to undefined]
**body** | **string** | The main email contents. | [default to undefined]
**from** | [**EmailAddressName**](EmailAddressName.md) |  | [default to undefined]
**to** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | A list of destionation email addresses to send this to | [default to undefined]
**replyto** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. | [optional] [default to undefined]
**cc** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. | [optional] [default to undefined]
**bcc** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. | [optional] [default to undefined]
**attachments** | [**Array&lt;MailAttachment&gt;**](MailAttachment.md) | (optional) File attachments to include in the email.  The file contents must be base64 encoded! | [optional] [default to undefined]
**id** | **number** | (optional)  ID of the Mail order within our system to use as the Mail Account. | [optional] [default to undefined]

## Example

```typescript
import { SendMailAdv } from '@interserver/myadmin-client';

const instance: SendMailAdv = {
    subject,
    body,
    from,
    to,
    replyto,
    cc,
    bcc,
    attachments,
    id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
