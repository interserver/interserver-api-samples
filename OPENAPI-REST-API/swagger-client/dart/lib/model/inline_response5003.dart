part of swagger.api;

class InlineResponse5003 {
  
  bool success = null;

  String text = null;

  InlineResponse5003();

  @override
  String toString() {
    return 'InlineResponse5003[success=$success, text=$text, ]';
  }

  InlineResponse5003.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse5003> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5003>() : json.map((value) => new InlineResponse5003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5003> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5003>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5003.fromJson(value));
    }
    return map;
  }
}
