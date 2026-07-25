part of swagger.api;

class CloseTicketResponseSchema {
  
  bool success = null;

  String text = null;

  CloseTicketResponseSchema();

  @override
  String toString() {
    return 'CloseTicketResponseSchema[success=$success, text=$text, ]';
  }

  CloseTicketResponseSchema.fromJson(Map<String, dynamic> json) {
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

  static List<CloseTicketResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<CloseTicketResponseSchema>() : json.map((value) => new CloseTicketResponseSchema.fromJson(value)).toList();
  }

  static Map<String, CloseTicketResponseSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CloseTicketResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CloseTicketResponseSchema.fromJson(value));
    }
    return map;
  }
}
