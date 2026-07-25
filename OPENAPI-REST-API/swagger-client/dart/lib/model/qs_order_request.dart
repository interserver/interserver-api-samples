part of swagger.api;

class QsOrderRequest {
  /* QuickServer plan/server id from getNewQs. */
  int server = null;
/* Root password for the QuickServer. */
  String password = null;
/* OS template file name from getNewQs (falls back to a default if unrecognized). */
  String os = "";
/* Terms-of-service acceptance. Must be true to place the order. */
  bool tos = null;
/* Free-form note saved on the service row. */
  String comment = "";

  QsOrderRequest();

  @override
  String toString() {
    return 'QsOrderRequest[server=$server, password=$password, os=$os, tos=$tos, comment=$comment, ]';
  }

  QsOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    server = json['server'];
    password = json['password'];
    os = json['os'];
    tos = json['tos'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'server': server,
      'password': password,
      'os': os,
      'tos': tos,
      'comment': comment
     };
  }

  static List<QsOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<QsOrderRequest>() : json.map((value) => new QsOrderRequest.fromJson(value)).toList();
  }

  static Map<String, QsOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QsOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QsOrderRequest.fromJson(value));
    }
    return map;
  }
}
