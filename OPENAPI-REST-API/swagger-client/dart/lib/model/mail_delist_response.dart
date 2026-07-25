part of swagger.api;

class MailDelistResponse {
  /* Mail service ID. */
  int id = null;
/* Local blocklist entries. */
  List<Object> local = [];
/* MailBaby trap block entries. */
  List<Object> mbtrap = [];
/* Subject-based block entries. */
  List<Object> subject = [];
/* Manually blocked entries. */
  List<Object> manual = [];

  MailDelistResponse();

  @override
  String toString() {
    return 'MailDelistResponse[id=$id, local=$local, mbtrap=$mbtrap, subject=$subject, manual=$manual, ]';
  }

  MailDelistResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    local = Object.listFromJson(json['local']);
    mbtrap = Object.listFromJson(json['mbtrap']);
    subject = Object.listFromJson(json['subject']);
    manual = Object.listFromJson(json['manual']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'local': local,
      'mbtrap': mbtrap,
      'subject': subject,
      'manual': manual
     };
  }

  static List<MailDelistResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailDelistResponse>() : json.map((value) => new MailDelistResponse.fromJson(value)).toList();
  }

  static Map<String, MailDelistResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailDelistResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailDelistResponse.fromJson(value));
    }
    return map;
  }
}
