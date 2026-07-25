part of swagger.api;

class MailAlertRequest {
  /* Alert type identifier. */
  String type = null;
/* Alert value or threshold. */
  String value = null;
/* Email address to notify. */
  String to = null;
/* Whether the alert is enabled. */
  String enabled = null;

  MailAlertRequest();

  @override
  String toString() {
    return 'MailAlertRequest[type=$type, value=$value, to=$to, enabled=$enabled, ]';
  }

  MailAlertRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    value = json['value'];
    to = json['to'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
      'to': to,
      'enabled': enabled
     };
  }

  static List<MailAlertRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailAlertRequest>() : json.map((value) => new MailAlertRequest.fromJson(value)).toList();
  }

  static Map<String, MailAlertRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailAlertRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailAlertRequest.fromJson(value));
    }
    return map;
  }
}
