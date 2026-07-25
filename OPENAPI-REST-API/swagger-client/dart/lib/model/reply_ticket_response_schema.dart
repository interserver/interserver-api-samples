part of swagger.api;

class ReplyTicketResponseSchema {
  
  bool success = null;

  int postId = null;

  ReplyTicketResponseSchema();

  @override
  String toString() {
    return 'ReplyTicketResponseSchema[success=$success, postId=$postId, ]';
  }

  ReplyTicketResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    postId = json['post_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'post_id': postId
     };
  }

  static List<ReplyTicketResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReplyTicketResponseSchema>() : json.map((value) => new ReplyTicketResponseSchema.fromJson(value)).toList();
  }

  static Map<String, ReplyTicketResponseSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReplyTicketResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReplyTicketResponseSchema.fromJson(value));
    }
    return map;
  }
}
