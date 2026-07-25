

# SendMailAdv

Details for an Email

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**subject** | **String** | The subject or title of the email |  |
|**body** | **String** | The main email contents. |  |
|**from** | [**EmailAddressName**](EmailAddressName.md) |  |  |
|**to** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | A list of destionation email addresses to send this to |  |
|**replyto** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. |  [optional] |
|**cc** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. |  [optional] |
|**bcc** | [**List&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. |  [optional] |
|**attachments** | [**List&lt;MailAttachment&gt;**](MailAttachment.md) | (optional) File attachments to include in the email.  The file contents must be base64 encoded! |  [optional] |
|**id** | **Long** | (optional)  ID of the Mail order within our system to use as the Mail Account. |  [optional] |


## Implemented Interfaces

* Serializable


