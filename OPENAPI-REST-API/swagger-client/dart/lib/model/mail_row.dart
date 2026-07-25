part of swagger.api;

class MailRow {
  /* The id of the mail. */
  String mailId = null;
/* The repeat invoices cost of the mail. */
  String repeatInvoicesCost = null;
/* The username of the mail. */
  String mailUsername = null;
/* The status of the mail. */
  String mailStatus = null;
/* The services name of the mail. */
  String servicesName = null;

  MailRow();

  @override
  String toString() {
    return 'MailRow[mailId=$mailId, repeatInvoicesCost=$repeatInvoicesCost, mailUsername=$mailUsername, mailStatus=$mailStatus, servicesName=$servicesName, ]';
  }

  MailRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mailId = json['mail_id'];
    repeatInvoicesCost = json['repeat_invoices_cost'];
    mailUsername = json['mail_username'];
    mailStatus = json['mail_status'];
    servicesName = json['services_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'mail_id': mailId,
      'repeat_invoices_cost': repeatInvoicesCost,
      'mail_username': mailUsername,
      'mail_status': mailStatus,
      'services_name': servicesName
     };
  }

  static List<MailRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailRow>() : json.map((value) => new MailRow.fromJson(value)).toList();
  }

  static Map<String, MailRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailRow.fromJson(value));
    }
    return map;
  }
}
