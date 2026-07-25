part of swagger.api;

class InlineResponse5005 {
  
  bool success = null;

  String text = null;

  InlineResponse5005();

  @override
  String toString() {
    return 'InlineResponse5005[success=$success, text=$text, ]';
  }

  InlineResponse5005.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse5005> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5005>() : json.map((value) => new InlineResponse5005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5005> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5005>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5005.fromJson(value));
    }
    return map;
  }
}
