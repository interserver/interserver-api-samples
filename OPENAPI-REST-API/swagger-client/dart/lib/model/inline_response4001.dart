part of swagger.api;

class InlineResponse4001 {
  
  bool success = null;

  String text = null;

  List<String> errors = [];

  InlineResponse4001();

  @override
  String toString() {
    return 'InlineResponse4001[success=$success, text=$text, errors=$errors, ]';
  }

  InlineResponse4001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text,
      'errors': errors
     };
  }

  static List<InlineResponse4001> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4001>() : json.map((value) => new InlineResponse4001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4001> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4001>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4001.fromJson(value));
    }
    return map;
  }
}
