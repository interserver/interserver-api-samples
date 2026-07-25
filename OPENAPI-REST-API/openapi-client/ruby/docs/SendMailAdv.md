# InterServerClient::SendMailAdv

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | The subject or title of the email |  |
| **body** | **String** | The main email contents. |  |
| **from** | [**EmailAddressName**](EmailAddressName.md) |  |  |
| **to** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | A list of destionation email addresses to send this to |  |
| **replyto** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. | [optional] |
| **cc** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. | [optional] |
| **bcc** | [**Array&lt;EmailAddressName&gt;**](EmailAddressName.md) | (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. | [optional] |
| **attachments** | [**Array&lt;MailAttachment&gt;**](MailAttachment.md) | (optional) File attachments to include in the email.  The file contents must be base64 encoded! | [optional] |
| **id** | **Integer** | (optional)  ID of the Mail order within our system to use as the Mail Account. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::SendMailAdv.new(
  subject: Your Package has been Delivered!,
  body: The package you ordered on 2021-01-23 has been delivered. If the package is broken into many pieces, please blaim someone else.,
  from: null,
  to: [{&quot;email&quot;:&quot;user@domain.com&quot;,&quot;name&quot;:&quot;John Smith&quot;}],
  replyto: [{&quot;email&quot;:&quot;user@domain.com&quot;,&quot;name&quot;:&quot;John Smith&quot;}],
  cc: [{&quot;email&quot;:&quot;user@domain.com&quot;,&quot;name&quot;:&quot;John Smith&quot;}],
  bcc: [{&quot;email&quot;:&quot;user@domain.com&quot;,&quot;name&quot;:&quot;John Smith&quot;}],
  attachments: [{&quot;filename&quot;:&quot;text.txt&quot;,&quot;data&quot;:&quot;base64_encoded_contents&quot;}],
  id: 5000
)
```

