part of swagger.api;

class InlineResponse500 {
  
  bool success = null;

  String text = null;

  InlineResponse500();

  @override
  String toString() {
    return 'InlineResponse500[success=$success, text=$text, ]';
  }

  InlineResponse500.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse500> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse500>() : json.map((value) => new InlineResponse500.fromJson(value)).toList();
  }

  static Map<String, InlineResponse500> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse500>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse500.fromJson(value));
    }
    return map;
  }
}
