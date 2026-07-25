part of swagger.api;

class InlineResponse4002 {
  
  bool success = null;

  String text = null;

  InlineResponse4002();

  @override
  String toString() {
    return 'InlineResponse4002[success=$success, text=$text, ]';
  }

  InlineResponse4002.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse4002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4002>() : json.map((value) => new InlineResponse4002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4002> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4002>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4002.fromJson(value));
    }
    return map;
  }
}
