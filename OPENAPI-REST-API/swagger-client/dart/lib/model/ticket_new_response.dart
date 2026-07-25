part of swagger.api;

class TicketNewResponse {
  
  int ticketId = null;

  String text = null;

  bool success = null;

  TicketNewResponse();

  @override
  String toString() {
    return 'TicketNewResponse[ticketId=$ticketId, text=$text, success=$success, ]';
  }

  TicketNewResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketId = json['ticket_id'];
    text = json['text'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ticket_id': ticketId,
      'text': text,
      'success': success
     };
  }

  static List<TicketNewResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketNewResponse>() : json.map((value) => new TicketNewResponse.fromJson(value)).toList();
  }

  static Map<String, TicketNewResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketNewResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketNewResponse.fromJson(value));
    }
    return map;
  }
}
