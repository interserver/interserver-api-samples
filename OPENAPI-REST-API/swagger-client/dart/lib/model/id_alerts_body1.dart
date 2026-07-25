part of swagger.api;

class IdAlertsBody1 {
  /* The ID of the alert to delete. */
  int alertId = null;

  IdAlertsBody1();

  @override
  String toString() {
    return 'IdAlertsBody1[alertId=$alertId, ]';
  }

  IdAlertsBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alertId = json['alert_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'alert_id': alertId
     };
  }

  static List<IdAlertsBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdAlertsBody1>() : json.map((value) => new IdAlertsBody1.fromJson(value)).toList();
  }

  static Map<String, IdAlertsBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdAlertsBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdAlertsBody1.fromJson(value));
    }
    return map;
  }
}
