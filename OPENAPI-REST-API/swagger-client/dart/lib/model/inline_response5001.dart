part of swagger.api;

class InlineResponse5001 {
  
  bool success = null;

  String text = null;

  InlineResponse5001();

  @override
  String toString() {
    return 'InlineResponse5001[success=$success, text=$text, ]';
  }

  InlineResponse5001.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse5001> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5001>() : json.map((value) => new InlineResponse5001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5001> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5001>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5001.fromJson(value));
    }
    return map;
  }
}
