part of swagger.api;

class InlineResponse20022 {
  
  bool success = null;

  String text = null;

  InlineResponse20022();

  @override
  String toString() {
    return 'InlineResponse20022[success=$success, text=$text, ]';
  }

  InlineResponse20022.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20022> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20022>() : json.map((value) => new InlineResponse20022.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20022> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20022>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20022.fromJson(value));
    }
    return map;
  }
}
