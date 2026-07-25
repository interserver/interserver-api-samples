part of swagger.api;

class ViewTicketResponse {
  
  bool success = null;

  TicketDetails ticket = null;

  TicketCustomFieldDetails ticketCustomFields = null;

  TicketPostDetails ticketPosts = null;

  ViewTicketResponse();

  @override
  String toString() {
    return 'ViewTicketResponse[success=$success, ticket=$ticket, ticketCustomFields=$ticketCustomFields, ticketPosts=$ticketPosts, ]';
  }

  ViewTicketResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    ticket = new TicketDetails.fromJson(json['ticket']);
    ticketCustomFields = new TicketCustomFieldDetails.fromJson(json['ticket_custom_fields']);
    ticketPosts = new TicketPostDetails.fromJson(json['ticket_posts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'ticket': ticket,
      'ticket_custom_fields': ticketCustomFields,
      'ticket_posts': ticketPosts
     };
  }

  static List<ViewTicketResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ViewTicketResponse>() : json.map((value) => new ViewTicketResponse.fromJson(value)).toList();
  }

  static Map<String, ViewTicketResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ViewTicketResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ViewTicketResponse.fromJson(value));
    }
    return map;
  }
}
