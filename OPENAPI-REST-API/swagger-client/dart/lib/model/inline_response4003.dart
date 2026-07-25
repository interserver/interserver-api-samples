part of swagger.api;

class InlineResponse4003 {
  
  bool success = null;

  String text = null;

  List<String> errors = [];

  InlineResponse4003();

  @override
  String toString() {
    return 'InlineResponse4003[success=$success, text=$text, errors=$errors, ]';
  }

  InlineResponse4003.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse4003> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4003>() : json.map((value) => new InlineResponse4003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4003> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4003>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4003.fromJson(value));
    }
    return map;
  }
}
