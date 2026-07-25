part of swagger.api;

class MailAlertsResponse {
  
  MailAlertsResponse();

  @override
  String toString() {
    return 'MailAlertsResponse[]';
  }

  MailAlertsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<MailAlertsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailAlertsResponse>() : json.map((value) => new MailAlertsResponse.fromJson(value)).toList();
  }

  static Map<String, MailAlertsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailAlertsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailAlertsResponse.fromJson(value));
    }
    return map;
  }
}
