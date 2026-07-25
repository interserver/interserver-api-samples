part of swagger.api;

class ReplyTicketRequest {
  
  String content = null;

  ReplyTicketRequest();

  @override
  String toString() {
    return 'ReplyTicketRequest[content=$content, ]';
  }

  ReplyTicketRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<ReplyTicketRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReplyTicketRequest>() : json.map((value) => new ReplyTicketRequest.fromJson(value)).toList();
  }

  static Map<String, ReplyTicketRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReplyTicketRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReplyTicketRequest.fromJson(value));
    }
    return map;
  }
}
