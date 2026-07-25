part of swagger.api;

class MailDelistRequest {
  /* Email address to delist. */
  String unblock = null;

  MailDelistRequest();

  @override
  String toString() {
    return 'MailDelistRequest[unblock=$unblock, ]';
  }

  MailDelistRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    unblock = json['unblock'];
  }

  Map<String, dynamic> toJson() {
    return {
      'unblock': unblock
     };
  }

  static List<MailDelistRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailDelistRequest>() : json.map((value) => new MailDelistRequest.fromJson(value)).toList();
  }

  static Map<String, MailDelistRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailDelistRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailDelistRequest.fromJson(value));
    }
    return map;
  }
}
