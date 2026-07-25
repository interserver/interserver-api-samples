part of swagger.api;

class InlineResponse401 {
  
  int code = null;

  String message = null;

  InlineResponse401();

  @override
  String toString() {
    return 'InlineResponse401[code=$code, message=$message, ]';
  }

  InlineResponse401.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message
     };
  }

  static List<InlineResponse401> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse401>() : json.map((value) => new InlineResponse401.fromJson(value)).toList();
  }

  static Map<String, InlineResponse401> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse401>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse401.fromJson(value));
    }
    return map;
  }
}
