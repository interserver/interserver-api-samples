part of swagger.api;

class InlineResponse20023 {
  
  bool success = null;

  String text = null;

  InlineResponse20023();

  @override
  String toString() {
    return 'InlineResponse20023[success=$success, text=$text, ]';
  }

  InlineResponse20023.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20023> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20023>() : json.map((value) => new InlineResponse20023.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20023> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20023>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20023.fromJson(value));
    }
    return map;
  }
}
