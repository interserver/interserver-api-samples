package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.EmailAddressName;
import com.interserver.model.MailAttachment;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class SendMailAdv {
    /* The subject or title of the email */
    String subject
    /* The main email contents. */
    String body
    
    EmailAddressName from
    /* A list of destionation email addresses to send this to */
    List<EmailAddressName> to
    /* (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. */
    List<EmailAddressName> replyto
    /* (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. */
    List<EmailAddressName> cc
    /* (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. */
    List<EmailAddressName> bcc
    /* (optional) File attachments to include in the email.  The file contents must be base64 encoded! */
    List<MailAttachment> attachments
    /* (optional)  ID of the Mail order within our system to use as the Mail Account. */
    Long id
}
