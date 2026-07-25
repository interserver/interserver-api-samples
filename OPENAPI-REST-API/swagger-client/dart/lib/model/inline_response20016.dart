part of swagger.api;

class InlineResponse20016 {
  
  bool success = null;

  String text = null;

  InlineResponse20016();

  @override
  String toString() {
    return 'InlineResponse20016[success=$success, text=$text, ]';
  }

  InlineResponse20016.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20016> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20016>() : json.map((value) => new InlineResponse20016.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20016> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20016>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20016.fromJson(value));
    }
    return map;
  }
}
