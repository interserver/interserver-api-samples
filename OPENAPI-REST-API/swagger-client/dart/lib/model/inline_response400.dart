part of swagger.api;

class InlineResponse400 {
  
  bool success = null;

  String text = null;

  InlineResponse400();

  @override
  String toString() {
    return 'InlineResponse400[success=$success, text=$text, ]';
  }

  InlineResponse400.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse400> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse400>() : json.map((value) => new InlineResponse400.fromJson(value)).toList();
  }

  static Map<String, InlineResponse400> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse400>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse400.fromJson(value));
    }
    return map;
  }
}
