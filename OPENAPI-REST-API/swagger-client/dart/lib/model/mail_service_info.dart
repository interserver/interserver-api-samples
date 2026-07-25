part of swagger.api;

class MailServiceInfo {
  /* The ID of the mail service. */
  String mailId = null;
/* The username associated with the mail service. */
  String mailUsername = null;
/* The type of mail service. */
  String mailType = null;
/* The currency of the mail service. */
  String mailCurrency = null;
/* The order date of the mail service. */
  String mailOrderDate = null;
/* The customer ID associated with the mail service. */
  String mailCustid = null;
/* The mail quota for the service. */
  String mailQuota = null;
/* The IP address associated with the mail service. */
  String mailIp = null;
/* The status of the mail service. */
  String mailStatus = null;
/* The invoice ID of the mail service. */
  String mailInvoice = null;
/* The coupon associated with the mail service. */
  String mailCoupon = null;
/* Additional information for the mail service. */
  String mailExtra = null;
/* The server status of the mail service. */
  String mailServerStatus = null;
/* Additional comments for the mail service. */
  String mailComment = null;

  MailServiceInfo();

  @override
  String toString() {
    return 'MailServiceInfo[mailId=$mailId, mailUsername=$mailUsername, mailType=$mailType, mailCurrency=$mailCurrency, mailOrderDate=$mailOrderDate, mailCustid=$mailCustid, mailQuota=$mailQuota, mailIp=$mailIp, mailStatus=$mailStatus, mailInvoice=$mailInvoice, mailCoupon=$mailCoupon, mailExtra=$mailExtra, mailServerStatus=$mailServerStatus, mailComment=$mailComment, ]';
  }

  MailServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mailId = json['mail_id'];
    mailUsername = json['mail_username'];
    mailType = json['mail_type'];
    mailCurrency = json['mail_currency'];
    mailOrderDate = json['mail_order_date'];
    mailCustid = json['mail_custid'];
    mailQuota = json['mail_quota'];
    mailIp = json['mail_ip'];
    mailStatus = json['mail_status'];
    mailInvoice = json['mail_invoice'];
    mailCoupon = json['mail_coupon'];
    mailExtra = json['mail_extra'];
    mailServerStatus = json['mail_server_status'];
    mailComment = json['mail_comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'mail_id': mailId,
      'mail_username': mailUsername,
      'mail_type': mailType,
      'mail_currency': mailCurrency,
      'mail_order_date': mailOrderDate,
      'mail_custid': mailCustid,
      'mail_quota': mailQuota,
      'mail_ip': mailIp,
      'mail_status': mailStatus,
      'mail_invoice': mailInvoice,
      'mail_coupon': mailCoupon,
      'mail_extra': mailExtra,
      'mail_server_status': mailServerStatus,
      'mail_comment': mailComment
     };
  }

  static List<MailServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailServiceInfo>() : json.map((value) => new MailServiceInfo.fromJson(value)).toList();
  }

  static Map<String, MailServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailServiceInfo.fromJson(value));
    }
    return map;
  }
}
