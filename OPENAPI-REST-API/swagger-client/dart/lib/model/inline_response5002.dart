part of swagger.api;

class InlineResponse5002 {
  
  bool success = null;

  String text = null;

  InlineResponse5002();

  @override
  String toString() {
    return 'InlineResponse5002[success=$success, text=$text, ]';
  }

  InlineResponse5002.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse5002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5002>() : json.map((value) => new InlineResponse5002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5002> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5002>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5002.fromJson(value));
    }
    return map;
  }
}
