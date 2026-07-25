part of swagger.api;

class TicketNew {
  
  String subject = null;

  String body = null;

  int serviceId = null;

  String serviceModule = null;

  TicketNew();

  @override
  String toString() {
    return 'TicketNew[subject=$subject, body=$body, serviceId=$serviceId, serviceModule=$serviceModule, ]';
  }

  TicketNew.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subject = json['subject'];
    body = json['body'];
    serviceId = json['service_id'];
    serviceModule = json['service_module'];
  }

  Map<String, dynamic> toJson() {
    return {
      'subject': subject,
      'body': body,
      'service_id': serviceId,
      'service_module': serviceModule
     };
  }

  static List<TicketNew> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketNew>() : json.map((value) => new TicketNew.fromJson(value)).toList();
  }

  static Map<String, TicketNew> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketNew>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketNew.fromJson(value));
    }
    return map;
  }
}
