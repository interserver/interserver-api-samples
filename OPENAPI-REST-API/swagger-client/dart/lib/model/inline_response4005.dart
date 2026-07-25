part of swagger.api;

class InlineResponse4005 {
  
  bool success = null;

  String text = null;

  InlineResponse4005();

  @override
  String toString() {
    return 'InlineResponse4005[success=$success, text=$text, ]';
  }

  InlineResponse4005.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text
     };
  }

  static List<InlineResponse4005> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4005>() : json.map((value) => new InlineResponse4005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4005> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4005>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4005.fromJson(value));
    }
    return map;
  }
}
