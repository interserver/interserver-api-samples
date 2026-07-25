part of swagger.api;

class MailAlertsResponseInner {
  
  int alertId = null;

  String alertType = null;

  String alertValue = null;

  String alertTo = null;

  String alertEnabled = null;

  MailAlertsResponseInner();

  @override
  String toString() {
    return 'MailAlertsResponseInner[alertId=$alertId, alertType=$alertType, alertValue=$alertValue, alertTo=$alertTo, alertEnabled=$alertEnabled, ]';
  }

  MailAlertsResponseInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alertId = json['alert_id'];
    alertType = json['alert_type'];
    alertValue = json['alert_value'];
    alertTo = json['alert_to'];
    alertEnabled = json['alert_enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'alert_id': alertId,
      'alert_type': alertType,
      'alert_value': alertValue,
      'alert_to': alertTo,
      'alert_enabled': alertEnabled
     };
  }

  static List<MailAlertsResponseInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailAlertsResponseInner>() : json.map((value) => new MailAlertsResponseInner.fromJson(value)).toList();
  }

  static Map<String, MailAlertsResponseInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailAlertsResponseInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailAlertsResponseInner.fromJson(value));
    }
    return map;
  }
}
