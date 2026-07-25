part of swagger.api;

class InlineResponse5004 {
  
  bool success = null;

  String text = null;

  InlineResponse5004();

  @override
  String toString() {
    return 'InlineResponse5004[success=$success, text=$text, ]';
  }

  InlineResponse5004.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse5004> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5004>() : json.map((value) => new InlineResponse5004.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5004> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5004>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5004.fromJson(value));
    }
    return map;
  }
}
