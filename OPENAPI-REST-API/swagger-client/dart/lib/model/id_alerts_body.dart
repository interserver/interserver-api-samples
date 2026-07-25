part of swagger.api;

class IdAlertsBody {
  /* The ID of the alert to delete. */
  int alertId = null;

  IdAlertsBody();

  @override
  String toString() {
    return 'IdAlertsBody[alertId=$alertId, ]';
  }

  IdAlertsBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alertId = json['alert_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'alert_id': alertId
     };
  }

  static List<IdAlertsBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdAlertsBody>() : json.map((value) => new IdAlertsBody.fromJson(value)).toList();
  }

  static Map<String, IdAlertsBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdAlertsBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdAlertsBody.fromJson(value));
    }
    return map;
  }
}
