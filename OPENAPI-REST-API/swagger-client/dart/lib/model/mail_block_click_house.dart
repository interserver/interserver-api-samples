part of swagger.api;

class MailBlockClickHouse {
  
  DateTime date = null;

  String from = null;

  String messageId = null;

  String subject = null;

  String to = null;

  MailBlockClickHouse();

  @override
  String toString() {
    return 'MailBlockClickHouse[date=$date, from=$from, messageId=$messageId, subject=$subject, to=$to, ]';
  }

  MailBlockClickHouse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = new DateTime.fromJson(json['date']);
    from = json['from'];
    messageId = json['messageId'];
    subject = json['subject'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'from': from,
      'messageId': messageId,
      'subject': subject,
      'to': to
     };
  }

  static List<MailBlockClickHouse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailBlockClickHouse>() : json.map((value) => new MailBlockClickHouse.fromJson(value)).toList();
  }

  static Map<String, MailBlockClickHouse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailBlockClickHouse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailBlockClickHouse.fromJson(value));
    }
    return map;
  }
}
