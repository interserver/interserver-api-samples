part of swagger.api;

class MailAlertUpdateRequest {
  /* Alert ID to update. */
  int alertId = null;
/* Alert type identifier. */
  String type = null;
/* Alert value or threshold. */
  String value = null;
/* Email address to notify. */
  String to = null;
/* Whether the alert is enabled. */
  String enabled = null;

  MailAlertUpdateRequest();

  @override
  String toString() {
    return 'MailAlertUpdateRequest[alertId=$alertId, type=$type, value=$value, to=$to, enabled=$enabled, ]';
  }

  MailAlertUpdateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alertId = json['alert_id'];
    type = json['type'];
    value = json['value'];
    to = json['to'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'alert_id': alertId,
      'type': type,
      'value': value,
      'to': to,
      'enabled': enabled
     };
  }

  static List<MailAlertUpdateRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailAlertUpdateRequest>() : json.map((value) => new MailAlertUpdateRequest.fromJson(value)).toList();
  }

  static Map<String, MailAlertUpdateRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailAlertUpdateRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailAlertUpdateRequest.fromJson(value));
    }
    return map;
  }
}
