part of swagger.api;

class InlineResponse20017 {
  
  bool success = null;

  String text = null;

  InlineResponse20017();

  @override
  String toString() {
    return 'InlineResponse20017[success=$success, text=$text, ]';
  }

  InlineResponse20017.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20017> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20017>() : json.map((value) => new InlineResponse20017.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20017> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20017>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20017.fromJson(value));
    }
    return map;
  }
}
