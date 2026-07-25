part of swagger.api;

class InlineResponse201 {
  
  bool success = null;

  String text = null;

  InlineResponse201();

  @override
  String toString() {
    return 'InlineResponse201[success=$success, text=$text, ]';
  }

  InlineResponse201.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse201> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse201>() : json.map((value) => new InlineResponse201.fromJson(value)).toList();
  }

  static Map<String, InlineResponse201> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse201>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse201.fromJson(value));
    }
    return map;
  }
}
