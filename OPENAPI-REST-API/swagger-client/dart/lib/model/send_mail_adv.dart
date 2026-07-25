part of swagger.api;

class SendMailAdv {
  /* The subject or title of the email */
  String subject = null;
/* The main email contents. */
  String body = null;

  EmailAddressName from = null;
/* A list of destionation email addresses to send this to */
  List<EmailAddressName> to = [];
/* (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. */
  List<EmailAddressName> replyto = [];
/* (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. */
  List<EmailAddressName> cc = [];
/* (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. */
  List<EmailAddressName> bcc = [];
/* (optional) File attachments to include in the email.  The file contents must be base64 encoded! */
  List<MailAttachment> attachments = [];
/* (optional)  ID of the Mail order within our system to use as the Mail Account. */
  int id = null;

  SendMailAdv();

  @override
  String toString() {
    return 'SendMailAdv[subject=$subject, body=$body, from=$from, to=$to, replyto=$replyto, cc=$cc, bcc=$bcc, attachments=$attachments, id=$id, ]';
  }

  SendMailAdv.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subject = json['subject'];
    body = json['body'];
    from = new EmailAddressName.fromJson(json['from']);
    to = EmailAddressName.listFromJson(json['to']);
    replyto = EmailAddressName.listFromJson(json['replyto']);
    cc = EmailAddressName.listFromJson(json['cc']);
    bcc = EmailAddressName.listFromJson(json['bcc']);
    attachments = MailAttachment.listFromJson(json['attachments']);
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'subject': subject,
      'body': body,
      'from': from,
      'to': to,
      'replyto': replyto,
      'cc': cc,
      'bcc': bcc,
      'attachments': attachments,
      'id': id
     };
  }

  static List<SendMailAdv> listFromJson(List<dynamic> json) {
    return json == null ? new List<SendMailAdv>() : json.map((value) => new SendMailAdv.fromJson(value)).toList();
  }

  static Map<String, SendMailAdv> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendMailAdv>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendMailAdv.fromJson(value));
    }
    return map;
  }
}
