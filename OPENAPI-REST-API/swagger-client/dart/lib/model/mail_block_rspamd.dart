part of swagger.api;

class MailBlockRspamd {
  
  String from = null;

  String subject = null;

  MailBlockRspamd();

  @override
  String toString() {
    return 'MailBlockRspamd[from=$from, subject=$subject, ]';
  }

  MailBlockRspamd.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from = json['from'];
    subject = json['subject'];
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'subject': subject
     };
  }

  static List<MailBlockRspamd> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailBlockRspamd>() : json.map((value) => new MailBlockRspamd.fromJson(value)).toList();
  }

  static Map<String, MailBlockRspamd> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailBlockRspamd>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailBlockRspamd.fromJson(value));
    }
    return map;
  }
}
